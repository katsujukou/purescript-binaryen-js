// i64x2
// splat(value: ExpressionRef): ExpressionRef;
export const _splat = function (Tuple, value, m) {
  const expr = m.i64x2.splat(value);
  return Tuple(m)(expr);
}

// extract_lane(vec: ExpressionRef, index: ExpressionRef): ExpressionRef;
export const _extract_lane = function (Tuple, vec, index, m) {
  const expr = m.i64x2.extract_lane(vec, index);
  return Tuple(m)(expr);
}

// replace_lane(vec: ExpressionRef, index: ExpressionRef, value: ExpressionRef): ExpressionRef;
export const _replace_lane = function (Tuple, vec, index, value, m) {
  const expr = m.i64x2.replace_lane(vec, index, value);
  return Tuple(m)(expr);
}

// eq(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _eq = function (Tuple, left, right, m) {
  const expr = m.i64x2.eq(left, right);
  return Tuple(m)(expr);
}

// ne(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _ne = function (Tuple, left, right, m) {
  const expr = m.i64x2.ne(left, right);
  return Tuple(m)(expr);
}

// lt_s(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _lt_s = function (Tuple, left, right, m) {
  const expr = m.i64x2.lt_s(left, right);
  return Tuple(m)(expr);
}

// gt_s(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _gt_s = function (Tuple, left, right, m) {
  const expr = m.i64x2.gt_s(left, right);
  return Tuple(m)(expr);
}

// le_s(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _le_s = function (Tuple, left, right, m) {
  const expr = m.i64x2.le_s(left, right);
  return Tuple(m)(expr);
}

// ge_s(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _ge_s = function (Tuple, left, right, m) {
  const expr = m.i64x2.ge_s(left, right);
  return Tuple(m)(expr);
}

// abs(value: ExpressionRef): ExpressionRef;
export const _abs = function (Tuple, value, m) {
  const expr = m.i64x2.abs(value);
  return Tuple(m)(expr);
}

// neg(value: ExpressionRef): ExpressionRef;
export const _neg = function (Tuple, value, m) {
  const expr = m.i64x2.neg(value);
  return Tuple(m)(expr);
}

// all_true(value: ExpressionRef): ExpressionRef;
export const _all_true = function (Tuple, value, m) {
  const expr = m.i64x2.all_true(value);
  return Tuple(m)(expr);
}

// bitmask(value: ExpressionRef): ExpressionRef;
export const _bitmask = function (Tuple, value, m) {
  const expr = m.i64x2.bitmask(value);
  return Tuple(m)(expr);
}

// shl(vec: ExpressionRef, shift: ExpressionRef): ExpressionRef;
export const _shl = function (Tuple, vec, shift, m) {
  const expr = m.i64x2.shl(vec, shift);
  return Tuple(m)(expr);
}

// shr_s(vec: ExpressionRef, shift: ExpressionRef): ExpressionRef;
export const _shr_s = function (Tuple, vec, shift, m) {
  const expr = m.i64x2.shr_s(vec, shift);
  return Tuple(m)(expr);
}

// shr_u(vec: ExpressionRef, shift: ExpressionRef): ExpressionRef;
export const _shr_u = function (Tuple, vec, shift, m) {
  const expr = m.i64x2.shr_u(vec, shift);
  return Tuple(m)(expr);
}

// add(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _add = function (Tuple, left, right, m) {
  const expr = m.i64x2.add(left, right);
  return Tuple(m)(expr);
}

// sub(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _sub = function (Tuple, left, right, m) {
  const expr = m.i64x2.sub(left, right);
  return Tuple(m)(expr);
}

// mul(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _mul = function (Tuple, left, right, m) {
  const expr = m.i64x2.mul(left, right);
  return Tuple(m)(expr);
}

// extmul_low_i32x4_s(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _extmul_low_i32x4_s = function (Tuple, left, right, m) {
  const expr = m.i64x2.extmul_low_i32x4_s(left, right);
  return Tuple(m)(expr);
}

// extmul_high_i32x4_s(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _extmul_high_i32x4_s = function (Tuple, left, right, m) {
  const expr = m.i64x2.extmul_high_i32x4_s(left, right);
  return Tuple(m)(expr);
}

// extmul_low_i32x4_u(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _extmul_low_i32x4_u = function (Tuple, left, right, m) {
  const expr = m.i64x2.extmul_low_i32x4_u(left, right);
  return Tuple(m)(expr);
}

// extmul_high_i32x4_u(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _extmul_high_i32x4_u = function (Tuple, left, right, m) {
  const expr = m.i64x2.extmul_high_i32x4_u(left, right);
  return Tuple(m)(expr);
}

// extend_low_i32x4_s(value: ExpressionRef): ExpressionRef;
export const _extend_low_i32x4_s = function (Tuple, value, m) {
  const expr = m.i64x2.extend_low_i32x4_s(value);
  return Tuple(m)(expr);
}

// extend_high_i32x4_s(value: ExpressionRef): ExpressionRef;
export const _extend_high_i32x4_s = function (Tuple, value, m) {
  const expr = m.i64x2.extend_high_i32x4_s(value);
  return Tuple(m)(expr);
}

// extend_low_i32x4_u(value: ExpressionRef): ExpressionRef;
export const _extend_low_i32x4_u = function (Tuple, value, m) {
  const expr = m.i64x2.extend_low_i32x4_u(value);
  return Tuple(m)(expr);
}

// extend_high_i32x4_u(value: ExpressionRef): ExpressionRef;
export const _extend_high_i32x4_u = function (Tuple, value, m) {
  const expr = m.i64x2.extend_high_i32x4_u(value);
  return Tuple(m)(expr);
}
