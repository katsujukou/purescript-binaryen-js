// tuple
// make(elements: ExportRef[]): ExpressionRef;
export const _make = function (Tuple, elements, m) {
  const expr = m.tuple.make(elements);
  return Tuple(m)(expr);
}

// extract(tuple: ExpressionRef, index: number): ExpressionRef;
export const _extract = function (Tuple, tuple, index, m) {
  const expr = m.tuple.extract(tuple, index);
  return Tuple(m)(expr);
}
