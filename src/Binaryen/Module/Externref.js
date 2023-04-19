// externref
// pop(): ExpressionRef;
export const _pop = function (Tuple, m) {
  const expr = m.externref.pop();
  return Tuple(m)(expr);
}