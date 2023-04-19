// eqref
// pop(): ExpressionRef;
export const _pop = function (Tuple, m) {
  const expr = m.eqref.pop();
  return Tuple(m)(expr);
}