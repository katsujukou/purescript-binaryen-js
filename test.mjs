import binaryen from "binaryen";

(() => {
  const mod = binaryen.parseText(`(module
    (func $add (param i32) (result i32) (local i32)
      (local.get 0
      local.get 1
      i32.add
      return) 
    )
  )`);

  try {
    console.log(mod.emitText());
  }
  catch (E) {
    console.log("oops!")
    console.error(E)
  }
})()