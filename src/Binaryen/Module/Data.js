// data.drop(segment: number): ExpressionRef;
export const _drop = function (Tuple, segment, m) {
  const expr = m.data.drop(segment);
  return Tuple(m)(expr);
}