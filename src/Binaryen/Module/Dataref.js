// dataref
// pop(): ExpressionRef;
export const _pop = function (Tuple, m) {
  const expr = m.dataref.pop();
  return Tuple(m)(expr);
}