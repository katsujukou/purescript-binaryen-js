// stringview_wtf16
// pop(): ExpressionRef;
export const _pop = function (Tuple, m) {
  const expr = m.stringview_wtf16.pop();
  return Tuple(m)(expr);
}