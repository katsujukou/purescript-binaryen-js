// v128
// load(offset: number, align: number, ptr: ExpressionRef, name?: string): ExpressionRef;
export const _load = function (Tuple, offset, align, ptr, name, m) {
  const expr = m.v128.load(offset, align, ptr, name);
  return Tuple(m)(expr);
}

// load8_splat(offset: number, align: number, ptr: ExpressionRef, name?: string): ExpressionRef;
export const _load8_splat = function (Tuple, offset, align, ptr, name, m) {
  const expr = m.v128.load8_splat(offset, align, ptr, name);
  return Tuple(m)(expr);
}

// load16_splat(offset: number, align: number, ptr: ExpressionRef, name?: string): ExpressionRef;
export const _load16_splat = function (Tuple, offset, align, ptr, name, m) {
  const expr = m.v128.load16_splat(offset, align, ptr, name);
  return Tuple(m)(expr);
}

// load32_splat(offset: number, align: number, ptr: ExpressionRef, name?: string): ExpressionRef;
export const _load32_splat = function (Tuple, offset, align, ptr, name, m) {
  const expr = m.v128.load32_splat(offset, align, ptr, name);
  return Tuple(m)(expr);
}

// load64_splat(offset: number, align: number, ptr: ExpressionRef, name?: string): ExpressionRef;
export const _load64_splat = function (Tuple, offset, align, ptr, name, m) {
  const expr = m.v128.load64_splat(offset, align, ptr, name);
  return Tuple(m)(expr);
}

// load8x8_s(offset: number, align: number, ptr: ExpressionRef, name?: string): ExpressionRef;
export const _load8x8_s = function (Tuple, offset, align, ptr, name, m) {
  const expr = m.v128.load8x8_s(offset, align, ptr, name);
  return Tuple(m)(expr);
}

// load8x8_u(offset: number, align: number, ptr: ExpressionRef, name?: string): ExpressionRef;
export const _load8x8_u = function (Tuple, offset, align, ptr, name, m) {
  const expr = m.v128.load8x8_u(offset, align, ptr, name);
  return Tuple(m)(expr);
}

// load16x4_s(offset: number, align: number, ptr: ExpressionRef, name?: string): ExpressionRef;
export const _load16x4_s = function (Tuple, offset, align, ptr, name, m) {
  const expr = m.v128.load16x4_s(offset, align, ptr, name);
  return Tuple(m)(expr);
}

// load16x4_u(offset: number, align: number, ptr: ExpressionRef, name?: string): ExpressionRef;
export const _load16x4_u = function (Tuple, offset, align, ptr, name, m) {
  const expr = m.v128.load16x4_u(offset, align, ptr, name);
  return Tuple(m)(expr);
}

// load32x2_s(offset: number, align: number, ptr: ExpressionRef, name?: string): ExpressionRef;
export const _load32x2_s = function (Tuple, offset, align, ptr, name, m) {
  const expr = m.v128.load32x2_s(offset, align, ptr, name);
  return Tuple(m)(expr);
}

// load32x2_u(offset: number, align: number, ptr: ExpressionRef, name?: string): ExpressionRef;
export const _load32x2_u = function (Tuple, offset, align, ptr, name, m) {
  const expr = m.v128.load32x2_u(offset, align, ptr, name);
  return Tuple(m)(expr);
}

// load32_zero(offset: number, align: number, ptr: ExpressionRef, name?: string): ExpressionRef;
export const _load32_zero = function (Tuple, offset, align, ptr, name, m) {
  const expr = m.v128.load32_zero(offset, align, ptr, name);
  return Tuple(m)(expr);
}

// load64_zero(offset: number, align: number, ptr: ExpressionRef, name?: string): ExpressionRef;
export const _load64_zero = function (Tuple, offset, align, ptr, name, m) {
  const expr = m.v128.load64_zero(offset, align, ptr, name);
  return Tuple(m)(expr);
}

// load8_lane(offset: number, align: number, index: number, ptr: ExpressionRef, vec: ExpressionRef, name?: string): ExpressionRef;
export const _load8_lane = function (Tuple, offset, align, index, ptr, vec, name, m) {
  const expr = m.v128.load8_lane(offset, align, index, ptr, vec, name);
  return Tuple(m)(expr);
}

// load16_lane(offset: number, align: number, index: number, ptr: ExpressionRef, vec: ExpressionRef, name?: string): ExpressionRef;
export const _load16_lane = function (Tuple, offset, align, index, ptr, vec, name, m) {
  const expr = m.v128.load16_lane(offset, align, index, ptr, vec, name);
  return Tuple(m)(expr);
}

// load32_lane(offset: number, align: number, index: number, ptr: ExpressionRef, vec: ExpressionRef, name?: string): ExpressionRef;
export const _load32_lane = function (Tuple, offset, align, index, ptr, vec, name, m) {
  const expr = m.v128.load32_lane(offset, align, index, ptr, vec, name);
  return Tuple(m)(expr);
}

// load64_lane(offset: number, align: number, index: number, ptr: ExpressionRef, vec: ExpressionRef, name?: string): ExpressionRef;
export const _load64_lane = function (Tuple, offset, align, index, ptr, vec, name, m) {
  const expr = m.v128.load64_lane(offset, align, index, ptr, vec, name);
  return Tuple(m)(expr);
}

// store8_lane(offset: number, align: number, index: number, pt: ExpressionRef, vec: ExpressionRef, name?: string): ExpressionRef;
export const _store8_lane = function (Tuple, offset, align, index, pt, vec, name, m) {
  const expr = m.v128.store8_lane(offset, align, index, pt, vec, name);
  return Tuple(m)(expr);
}

// store16_lane(offset: number, align: number, index: number, pt: ExpressionRef, vec: ExpressionRef, name?: string): ExpressionRef;
export const _store16_lane = function (Tuple, offset, align, index, pt, vec, name, m) {
  const expr = m.v128.store16_lane(offset, align, index, pt, vec, name);
  return Tuple(m)(expr);
}

// store32_lane(offset: number, align: number, index: number, pt: ExpressionRef, vec: ExpressionRef, name?: string): ExpressionRef;
export const _store32_lane = function (Tuple, offset, align, index, pt, vec, name, m) {
  const expr = m.v128.store32_lane(offset, align, index, pt, vec, name);
  return Tuple(m)(expr);
}

// store64_lane(offset: number, align: number, index: number, pt: ExpressionRef, vec: ExpressionRef, name?: string): ExpressionRef;
export const _store64_lane = function (Tuple, offset, align, index, pt, vec, name, m) {
  const expr = m.v128.store64_lane(offset, align, index, pt, vec, name);
  return Tuple(m)(expr);
}

// store(offset: number, align: number, ptr: ExpressionRef, value: ExpressionRef, name?: string): ExpressionRef;
export const _store = function (Tuple, offset, align, ptr, value, name, m) {
  const expr = m.v128.store(offset, align, ptr, value, name);
  return Tuple(m)(expr);
}

// const(value: ArrayLike<number>): ExpressionRef;
export const _const = function (Tuple, value, m) {
  const expr = m.v128.const(value);
  return Tuple(m)(expr);
}

// not(value: ExpressionRef): ExpressionRef;
export const _not = function (Tuple, value, m) {
  const expr = m.v128.not(value);
  return Tuple(m)(expr);
}

// any_true(value: ExpressionRef): ExpressionRef;
export const _any_true = function (Tuple, value, m) {
  const expr = m.v128.any_true(value);
  return Tuple(m)(expr);
}

// and(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _and = function (Tuple, left, right, m) {
  const expr = m.v128.and(left, right);
  return Tuple(m)(expr);
}

// or(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _or = function (Tuple, left, right, m) {
  const expr = m.v128.or(left, right);
  return Tuple(m)(expr);
}

// xor(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _xor = function (Tuple, left, right, m) {
  const expr = m.v128.xor(left, right);
  return Tuple(m)(expr);
}

// andnot(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _andnot = function (Tuple, left, right, m) {
  const expr = m.v128.andnot(left, right);
  return Tuple(m)(expr);
}

// bitselect(left: ExpressionRef, right: ExpressionRef, cond: ExpressionRef): ExpressionRef;
export const _bitselect = function (Tuple, left, right, cond, m) {
  const expr = m.v128.bitselect(left, right, cond);
  return Tuple(m)(expr);
}
// pop(): ExpressionRef;
export const _pop = function (Tuple, m) {
  const expr = m.v128.pop();
  return Tuple(m)(expr);
}
