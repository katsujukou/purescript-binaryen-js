// stringview_iter
// pop(): ExpressionRef;
export const _pop = function (Tuple, m) {
  const expr = m.stringview_iter.pop();
  return Tuple(m)(expr);
}