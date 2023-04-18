// -- memory.size(name?: string, memory64?: boolean): ExpressionRef;
export const _size = function (Tuple, name, memory64, m) {
  const expr = m.memory.size(name, memory64);
  return Tuple(m)(expr);
}

// -- memory.grow(value: ExpressionRef, name?: string, memory64?: boolean): ExpressionRef;
export const _grow = function (Tuple, value, name, memory64, m) {
  const expr = m.memory.grow(value, name, memory64);
  return Tuple(m)(expr);
}

// -- memory.init(segment: number, dest: ExpressionRef, offset: ExpressionRef, size: ExpressionRef, name?: string): ExpressionRef;
export const _init = function (Tuple, segment, dest, offset, size, name, m) {
  const expr = m.memory.init(segment, dest, offset, size, name);
  return Tuple(m)(expr);
}

// -- memory.copy(dest: ExpressionRef, source: ExpressionRef, size: ExpressionRef, destName?: string, sourceName?: string): ExpressionRef;
export const _copy = function (Tuple, dest, source, size, destName, sourceName, m) {
  const expr = m.memory.copy (dest, source, size, destName, sourceName);
  return Tuple(m)(expr); 
}

// -- memory.fill(dest: ExpressionRef, value: ExpressionRef, size: ExpressionRef, name?: string): ExpressionRef;
export const _fill = function (Tuple, dest, value, size, name, m) {
  const expr = m.memory.fill (dest, value, size, name);
  return Tuple(m)(expr);
}