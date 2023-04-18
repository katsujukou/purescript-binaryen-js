// i32.atomic.rmw8_u
// add(offset: number, ptr: ExpressionRef, value: ExpressionRef, name?: string): ExpressionRef;
export const _add = function (Tuple, offset, ptr, value, name, m) {
  const expr = m.i32.atomic.rmw8_u.add(offset, ptr, value, name);
  return Tuple(m)(expr);
}

// sub(offset: number, ptr: ExpressionRef, value: ExpressionRef, name?: string): ExpressionRef;
export const _sub = function (Tuple, offset, ptr, value, name, m) {
  const expr = m.i32.atomic.rmw8_u.sub(offset, ptr, value, name);
  return Tuple(m)(expr);
}

// and(offset: number, ptr: ExpressionRef, value: ExpressionRef, name?: string): ExpressionRef;
export const _and = function (Tuple, offset, ptr, value, name, m) {
  const expr = m.i32.atomic.rmw8_u.and(offset, ptr, value, name);
  return Tuple(m)(expr);
}

// or(offset: number, ptr: ExpressionRef, value: ExpressionRef, name?: string): ExpressionRef;
export const _or = function (Tuple, offset, ptr, value, name, m) {
  const expr = m.i32.atomic.rmw8_u.or(offset, ptr, value, name);
  return Tuple(m)(expr);
}

// xor(offset: number, ptr: ExpressionRef, value: ExpressionRef, name?: string): ExpressionRef;
export const _xor = function (Tuple, offset, ptr, value, name, m) {
  const expr = m.i32.atomic.rmw8_u.xor(offset, ptr, value, name);
  return Tuple(m)(expr);
}

// xchg(offset: number, ptr: ExpressionRef, value: ExpressionRef, name?: string): ExpressionRef;
export const _xchg = function (Tuple, offset, ptr, value, name, m) {
  const expr = m.i32.atomic.rmw8_u.xchg(offset, ptr, value, name);
  return Tuple(m)(expr);
}

// cmpxchg(offset: number, ptr: ExpressionRef, expected: ExpressionRef, replacement: ExpressionRef, name?: string): ExpressionRef;
export const _cmpxchg = function (Tuple, offset, ptr, expected, replacement, name, m) {
  const expr = m.i32.atomic.rmw8_u.cmpxchg(offset, ptr, expected, replacement, name);
  return Tuple(m)(expr);
}
