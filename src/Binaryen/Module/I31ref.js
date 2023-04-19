// i31ref
// pop(): ExpressionRef;
export const _pop = function (Tuple, m) {
  const expr = m.i31ref.pop();
  return Tuple(m)(expr);
}