// stringref
// pop(): ExpressionRef;
export const _pop = function (Tuple, m) {
  const expr = m.stringref.pop();
  return Tuple(m)(expr);
}