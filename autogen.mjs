import { readFile, writeFile } from "node:fs/promises";
import { existsSync } from "node:fs";
import { dirname,join } from "node:path";
import { fileURLToPath } from 'url';

const __dirname = dirname(fileURLToPath(import.meta.url));


function parseArgs(args) {
  let opts = { replace: false };
  let mode = null;
  for (const arg of args) {
    if (arg == "--") {
      mode = null;
      continue;
    }

    switch (arg) {
      case "--target":
      case "-t":
        mode = "target";
        break;
      case "--replace":
      case "-R":
        opts.replace = true;
        break;
      default:
        if (mode == "target") {
          if (arg === "ffi" || arg === "purs") {
            opts.target = arg;
            break;
          }
          else {
            console.error("Invalid target: " + arg);
            exitFailure(1)
          }
        }
        else {
          let matched = arg.match(/^(([A-Z][a-zA-Z0-9]*\.)*[A-Z][a-zA-Z0-9]*)$/)
          if (matched) {
            opts.moduleName = arg;
          }
          else {
            console.error("Invalid module name: " + arg);
            exitFailure(1);
          }
        }
    }
  }
  return opts;
}
const main = async (args) => {
  const opts = parseArgs(args);
  const inputPath = join(__dirname, "src", opts.moduleName.replaceAll(".", "/")+ (opts.target === "ffi" ? ".js" : ".purs"));
  if (!existsSync(inputPath)) {
    console.error("File not found: " + inputPath);
    exitFailure(1);
  }
  const content = await readFile(inputPath, 'utf-8');
  if (opts.target === "ffi") {
    await genForeignModule(inputPath, content, opts.replace);
    console.log("Successfully generated: " + inputPath);
  }
  else if (opts.target === "purs") {
    await genPursModule(opts.moduleName, inputPath, content, opts.replace);
  }
};

async function genForeignModule (inputPath, content, replace) {
  const lines = content.split("\n").filter(ln => /^\/\/.*$/.test(ln));
  const js = [];
  let scope = null;
  for (const line of lines) {
    if (!scope) {
      scope = line.match(/\/\/\s*(.+)$/)?.[1];
      js.push(line);
      continue;
    }

    const matched = line.match(/([a-zA-Z0-9_]+)\([a-zA-Z0-9_]+\??: [\| A-Za-z0-9_]+(, [a-zA-Z0-9_]+\??: [A-Za-z0-9_]+)*\)/);
    if (!matched) {
      continue;
    }
    const funcName = matched[1];
    const args = collectArgs(matched[0]).map(arg => arg.name);
    const code = strTemplate(ffiFunctionTemplate, {
      __NAME__: funcName,
      __ARGS__: args.join(", "),
      __SCOPE__: scope,
      __EXPR__: ((ix) => {
        while(1) {
          let expr = "expr" + (ix == 0 ? "" : ix);
          if (args.findIndex(arg => arg == expr) == -1) {
            return expr;
          }
          ix++;
        }
      })(0)
    });
    js.push(line);
    js.push(code);
  }
  if (replace) {
    await writeFile(inputPath, js.join("\n"), "utf-8");
  }
  else {
    console.log(js.join("\n"));
  }
}

async function genPursModule (moduleName, inputPath, content, replace) {
  const lines = content.split("\n").filter(ln => /^\-\-.*$/.test(ln));
  const module = {
    moduleName,
    imports: [
      "import Binaryen.Monad (Binaryen)",
      "import Data.Maybe (Maybe)",
      "import Data.Nullable (Nullable, toNullable)"
    ],
    exports: [],
    decls: [],
  };
  const arities = {};
  for (const line of lines) {
    module.decls.push(line);
    let matched = line.match(/([a-zA-Z0-9_]+)\([a-zA-Z0-9_]+\??: [\| A-Za-z0-9_]+(, [a-zA-Z0-9_]+\??: [A-Za-z0-9_]+)*\)(: .*);/);
    if (!matched) {
      matched = line.match(/([a-zA-Z0-9_]+)\(\)(: .*);/);
      if (!matched) {
        continue;        
      }
    }
    const funcName = matched[1];
    const returnType = toTypedParam(matched[matched.length - 1]).type;
    const args = collectArgs(matched[0]);
    const arity = args.length;
    arities[`${arity}`] = null;
    const pursArgTypes = args.map(({ type }) => type);
    const foreingImportCode = strTemplate(pursForeignImportTemplate, {
      __NAME__: funcName,
      __ARITY__: arity,
      __ARG_TYPES__: pursArgTypes.reduce((acc, ty) => `${acc} ${ty.includes(" ") ? '('+ty+')' : ty}`, "").trim(),
      __RET__: returnType,
    })
    module.decls.push(foreingImportCode);
    const wrapperFuncCode = strTemplate(pursWrapperFunctionTemplate, {
      __NAME__: funcName,
      __ARITY__: arity, 
      __ARGS__: args.map(({ name }) => name.replace("Nullable", "Maybe")).join(" "),
      __ARG_SIGS__: args.map(({ type }) => type.replace("Nullable", "Maybe")).join(" -> ") + (args.length > 0 ? " -> " : ""),
      __ARGS_TRANSFORMED__: args.map(({ name, type }) => type.includes("Nullable") ? `(toNullable ${name})` : name).join(" "),
      __RET__: returnType,
    })
    module.decls.push(wrapperFuncCode);
    module.exports.push(funcName);
  }
  module.imports.push(
    "import Binaryen.Utils (" + Object.keys(arities).map(ary => `BinaryenFn${ary}, runBinaryenFn${ary}`).join(", ") + ")"
  )
  module.imports.push(
    
  )

  const code = `module ${module.moduleName}`
    + "\n  ( " + module.exports.join("\n  , ") + "\n  ) where\n\n"
    + module.imports.join("\n") + "\n"
    + "\n" 
    + module.decls.join("\n");
  if (replace) {
    await writeFile(inputPath, code, "utf-8");
  }
  else {
    console.log(code);
  }

}

/**
 * 
 * @param {string} signature 
 * @returns {{ name: string, type: { name: string, of?: "option" | "array", }}[]}
 */
function collectArgs (signature) {
  const matched = signature.match(/[a-zA-Z0-9_]+\((.*)\)/);
  return matched[1].split(",").filter(x => x.length > 0).map(param => toTypedParam(param));
}

function toTypedParam(param) {
  const [name, ...rest] = param.split(":").map(x => x.trim());
  const type = rest.join(":");
  const typeInfo = toPursType(name, type);
  return { name: name.replace("?", ""), type: typeInfo };
}

function toPursType(varName, jsType) {
  let typeInfo = { name: "", of: null, members: null };
  if (jsType.match(/{(.*)}/)) {
    // record type
    typeInfo.name = "Record";
    typeInfo.members = jsType.match(/{(.*)}/)[1].split(",").map(toTypedParam);
  }
  else {
    typeInfo.name = jsType[0].toUpperCase() + jsType.slice(1);
  }

  if (jsType.match(/(\| null|null \|)/) || varName.match(/\?$/)) {
    typeInfo.of = "option"; 
  }
  else if (jsType.match(/\[\]$/)) {
    typeInfo.of = "array"; 
    typeInfo.name = typeInfo.name.replace("[]", "");
  }

  return toPursTypename(typeInfo);
}

/**
 * 
 * @param {{ name: string, of?: "option" | "array", }} typeInfo
 */
function toPursTypename (typeInfo) {
  const typename = 
    typeInfo.name == "Record"
      ? "{ " + typeInfo.members.map(toPursTypedIdent).join(", ") +" }"
      : typeInfo.name;
  return (typeInfo.of == "array" ? "Array " : typeInfo.of == "option" ? "Nullable " : "") + typename;
}

function toPursTypedIdent ({ name, type }) {
  return `${name} :: ${type}`;
}

function strTemplate (templ, replaces) {
  let ret = templ;
  Object.keys(replaces).forEach((pattern) => {
    const replacement = replaces[pattern];
    ret = ret.replaceAll(pattern, replacement);
  })
  return ret;
}

const ffiFunctionTemplate = `export const ___NAME__ = function (Tuple, __ARGS__, m) {
  const __EXPR__ = m.__SCOPE__.__NAME__(__ARGS__);
  return Tuple(m)(__EXPR__);
}
`
const pursForeignImportTemplate = `foreign import ___NAME__ :: BinaryenFn__ARITY__ __ARG_TYPES__ __RET__
`

const pursWrapperFunctionTemplate = `__NAME__ :: __ARG_SIGS__Binaryen __RET__
__NAME__ __ARGS__ = runBinaryenFn__ARITY__ ___NAME__ __ARGS_TRANSFORMED__
`

function exitFailure (code) {
  console.error("\x1b[33m[ERROR]\x1b[0m Process exited with code "+code);
  process.exit(code)
}

main(process.argv.slice(2))