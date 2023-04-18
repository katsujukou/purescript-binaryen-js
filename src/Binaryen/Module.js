export const _block = function (Tuple, label, body, resultType, m) {
  const expr = m.block(label, body, resultType);
  return Tuple(m)(expr);
}

export const _if = function (Tuple, condition, ifTrue, ifFalse, m) {
  const expr = m.if(condition, ifTrue, ifFalse);
  return Tuple(m)(expr);
}

export const _loop = function (Tuple, label, body, m) {
  const expr = m.loop(label, body);
  return Tuple(m)(expr);
}

export const _br = function (Tuple, label, condition, value, m) {
  const expr = m.br(label, condition, value);
  return Tuple(m)(expr);
}

export const _br_if = function (Tuple, label, condition, value, m) {
  const expr = m.br_if(label, condition, value);
  return Tuple(m)(expr);
}

export const _switch = function (Tuple, labels, defaultLabel, condition, value, m) {
  const expr = m.switch(labels, defaultLabel, condition, value);
  return Tuple(m)(expr);
}

export const _call = function (Tuple, name, operands, returnType, m) {
  const expr = m.call(name, operands, returnType);
  return Tuple(m)(expr);
}

export const _return_call = function (Tuple, name, operands, returnType, m) {
  const expr = m.return_call(name, operands, returnType);
  return Tuple(m)(expr);
}

export const _call_indirect = function (Tuple, target, operands, params, results, m) {
  const expr = m.call_indirect(target, operands, params, results);
  return Tuple(m)(expr);
}

export const _return_call_indirect = function (Tuple, target, operands, params, results, m) {
  const expr = m.return_call_indirect(target, operands, params, results);
  return Tuple(m)(expr);
}
