// anyref
// pop(): ExpressionRef;
export const _pop = function (Tuple, m) {
  const expr = m.anyref.pop();
  return Tuple(m)(expr);
}