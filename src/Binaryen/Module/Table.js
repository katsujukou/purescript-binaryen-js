export const _get = function (Tuple, name, index, type, m) {
  const expr = m.table.get(name, index, type);
  return Tuple(m)(expr);
}

// (name: string, index: ExpressionRef, value: ExpressionRef)
export const _set = function (Tuple, name, index, value, m) {
  const expr = m.table.set(name, index, value);
  return Tuple(m)(expr);
}

export const _size = function (Tuple, name, m) {
  const expr = m.size(name);
  return Tuple(m)(expr);
}

// table.grow(name: string, value: ExpressionRef, delta: ExpressionRef): ExpressionRef;
export const _grow = function (name, value, delta) {
  const expr = m.table.grow(name, value, delta);
  return Tuple(m)(expr);
}
