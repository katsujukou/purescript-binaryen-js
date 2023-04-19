// stringview_wtf8
// pop(): ExpressionRef;
export const _pop = function (Tuple, m) {
  const expr = m.stringview_wtf8.pop();
  return Tuple(m)(expr);
}