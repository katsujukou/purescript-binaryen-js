export const _addFunction = function (Tuple, name, params, results, vars, body, mod) {
  const funcref = mod.addFunction(name, params, results, vars, body);
  return Tuple(mod)(funcref);
}
export const emitText_ = function (Tuple, mod) {
  const wat = mod.emitText();
  return Tuple(mod)(wat);
}

