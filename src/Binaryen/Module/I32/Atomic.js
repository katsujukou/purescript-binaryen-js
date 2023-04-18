// i32.atomic
// load(offset: number, ptr: ExpressionRef, name?: string): ExpressionRef;
export const _load = function (Tuple, offset, ptr, name, m) {
  const expr = m.i32.atomic.load(offset, ptr, name);
  return Tuple(m)(expr);
}

// load8_u(offset: number, ptr: ExpressionRef, name?: string): ExpressionRef;
export const _load8_u = function (Tuple, offset, ptr, name, m) {
  const expr = m.i32.atomic.load8_u(offset, ptr, name);
  return Tuple(m)(expr);
}

// load16_u(offset: number, ptr: ExpressionRef, name?: string): ExpressionRef;
export const _load16_u = function (Tuple, offset, ptr, name, m) {
  const expr = m.i32.atomic.load16_u(offset, ptr, name);
  return Tuple(m)(expr);
}

// load32_u(offset: number, ptr: ExpressionRef, name?: string): ExpressionRef;
export const _load32_u = function (Tuple, offset, ptr, name, m) {
  const expr = m.i32.atomic.load32_u(offset, ptr, name);
  return Tuple(m)(expr);
}

// store(offset: number, ptr: ExpressionRef, value: ExpressionRef, name?: string): ExpressionRef;
export const _store = function (Tuple, offset, ptr, value, name, m) {
  const expr = m.i32.atomic.store(offset, ptr, value, name);
  return Tuple(m)(expr);
}

// store8(offset: number, ptr: ExpressionRef, value: ExpressionRef, name?: string): ExpressionRef;
export const _store8 = function (Tuple, offset, ptr, value, name, m) {
  const expr = m.i32.atomic.store8(offset, ptr, value, name);
  return Tuple(m)(expr);
}

// store16(offset: number, ptr: ExpressionRef, value: ExpressionRef, name?: string): ExpressionRef;
export const _store16 = function (Tuple, offset, ptr, value, name, m) {
  const expr = m.i32.atomic.store16(offset, ptr, value, name);
  return Tuple(m)(expr);
}

// store32(offset: number, ptr: ExpressionRef, value: ExpressionRef, name?: string): ExpressionRef;
export const _store32 = function (Tuple, offset, ptr, value, name, m) {
  const expr = m.i32.atomic.store32(offset, ptr, value, name);
  return Tuple(m)(expr);
}
