// funcref
// pop(): ExpressionRef;
export const _pop = function (Tuple, m) {
  const expr = m.funcref.pop();
  return Tuple(m)(expr);
}