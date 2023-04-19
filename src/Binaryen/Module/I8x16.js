// i8x16
//shuffle(left: ExpressionRef, right: ExpressionRef, mask: ArrayLike<number>): ExpressionRef;
export const _shuffle = function (Tuple, left, right, mask, m) {
  const expr = m.i8x16.shuffle(left, right, mask);
  return Tuple(m)(expr);
}

// swizzle(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _swizzle = function (Tuple, left, right, m) {
  const expr = m.i8x16.swizzle(left, right);
  return Tuple(m)(expr);
}

// splat(value: ExpressionRef): ExpressionRef;
export const _splat = function (Tuple, value, m) {
  const expr = m.i8x16.splat(value);
  return Tuple(m)(expr);
}

// extract_lane_s(vec: ExpressionRef, index: ExpressionRef): ExpressionRef;
export const _extract_lane_s = function (Tuple, vec, index, m) {
  const expr = m.i8x16.extract_lane_s(vec, index);
  return Tuple(m)(expr);
}

// extract_lane_u(vec: ExpressionRef, index: ExpressionRef): ExpressionRef;
export const _extract_lane_u = function (Tuple, vec, index, m) {
  const expr = m.i8x16.extract_lane_u(vec, index);
  return Tuple(m)(expr);
}

// replace_lane(vec: ExpressionRef, index: ExpressionRef, value: ExpressionRef): ExpressionRef;
export const _replace_lane = function (Tuple, vec, index, value, m) {
  const expr = m.i8x16.replace_lane(vec, index, value);
  return Tuple(m)(expr);
}

// eq(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _eq = function (Tuple, left, right, m) {
  const expr = m.i8x16.eq(left, right);
  return Tuple(m)(expr);
}

// ne(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _ne = function (Tuple, left, right, m) {
  const expr = m.i8x16.ne(left, right);
  return Tuple(m)(expr);
}

// lt_s(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _lt_s = function (Tuple, left, right, m) {
  const expr = m.i8x16.lt_s(left, right);
  return Tuple(m)(expr);
}

// lt_u(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _lt_u = function (Tuple, left, right, m) {
  const expr = m.i8x16.lt_u(left, right);
  return Tuple(m)(expr);
}

// gt_s(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _gt_s = function (Tuple, left, right, m) {
  const expr = m.i8x16.gt_s(left, right);
  return Tuple(m)(expr);
}

// gt_u(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _gt_u = function (Tuple, left, right, m) {
  const expr = m.i8x16.gt_u(left, right);
  return Tuple(m)(expr);
}

// le_s(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _le_s = function (Tuple, left, right, m) {
  const expr = m.i8x16.le_s(left, right);
  return Tuple(m)(expr);
}

// le_u(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _le_u = function (Tuple, left, right, m) {
  const expr = m.i8x16.le_u(left, right);
  return Tuple(m)(expr);
}

// ge_s(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _ge_s = function (Tuple, left, right, m) {
  const expr = m.i8x16.ge_s(left, right);
  return Tuple(m)(expr);
}

// ge_u(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _ge_u = function (Tuple, left, right, m) {
  const expr = m.i8x16.ge_u(left, right);
  return Tuple(m)(expr);
}

// abs(value: ExpressionRef): ExpressionRef;
export const _abs = function (Tuple, value, m) {
  const expr = m.i8x16.abs(value);
  return Tuple(m)(expr);
}

// neg(value: ExpressionRef): ExpressionRef;
export const _neg = function (Tuple, value, m) {
  const expr = m.i8x16.neg(value);
  return Tuple(m)(expr);
}

// all_true(value: ExpressionRef): ExpressionRef;
export const _all_true = function (Tuple, value, m) {
  const expr = m.i8x16.all_true(value);
  return Tuple(m)(expr);
}

// bitmask(value: ExpressionRef): ExpressionRef;
export const _bitmask = function (Tuple, value, m) {
  const expr = m.i8x16.bitmask(value);
  return Tuple(m)(expr);
}

// popcnt(value: ExpressionRef): ExpressionRef;
export const _popcnt = function (Tuple, value, m) {
  const expr = m.i8x16.popcnt(value);
  return Tuple(m)(expr);
}

// shl(vec: ExpressionRef, shift: ExpressionRef): ExpressionRef;
export const _shl = function (Tuple, vec, shift, m) {
  const expr = m.i8x16.shl(vec, shift);
  return Tuple(m)(expr);
}

// shr_s(vec: ExpressionRef, shift: ExpressionRef): ExpressionRef;
export const _shr_s = function (Tuple, vec, shift, m) {
  const expr = m.i8x16.shr_s(vec, shift);
  return Tuple(m)(expr);
}

// shr_u(vec: ExpressionRef, shift: ExpressionRef): ExpressionRef;
export const _shr_u = function (Tuple, vec, shift, m) {
  const expr = m.i8x16.shr_u(vec, shift);
  return Tuple(m)(expr);
}

// add(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _add = function (Tuple, left, right, m) {
  const expr = m.i8x16.add(left, right);
  return Tuple(m)(expr);
}

// add_saturate_s(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _add_saturate_s = function (Tuple, left, right, m) {
  const expr = m.i8x16.add_saturate_s(left, right);
  return Tuple(m)(expr);
}

// add_saturate_u(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _add_saturate_u = function (Tuple, left, right, m) {
  const expr = m.i8x16.add_saturate_u(left, right);
  return Tuple(m)(expr);
}

// sub(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _sub = function (Tuple, left, right, m) {
  const expr = m.i8x16.sub(left, right);
  return Tuple(m)(expr);
}

// sub_saturate_s(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _sub_saturate_s = function (Tuple, left, right, m) {
  const expr = m.i8x16.sub_saturate_s(left, right);
  return Tuple(m)(expr);
}

// sub_saturate_u(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _sub_saturate_u = function (Tuple, left, right, m) {
  const expr = m.i8x16.sub_saturate_u(left, right);
  return Tuple(m)(expr);
}

// mul(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _mul = function (Tuple, left, right, m) {
  const expr = m.i8x16.mul(left, right);
  return Tuple(m)(expr);
}

// min_s(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _min_s = function (Tuple, left, right, m) {
  const expr = m.i8x16.min_s(left, right);
  return Tuple(m)(expr);
}

// min_u(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _min_u = function (Tuple, left, right, m) {
  const expr = m.i8x16.min_u(left, right);
  return Tuple(m)(expr);
}

// max_s(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _max_s = function (Tuple, left, right, m) {
  const expr = m.i8x16.max_s(left, right);
  return Tuple(m)(expr);
}

// max_u(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _max_u = function (Tuple, left, right, m) {
  const expr = m.i8x16.max_u(left, right);
  return Tuple(m)(expr);
}

// avgr_u(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _avgr_u = function (Tuple, left, right, m) {
  const expr = m.i8x16.avgr_u(left, right);
  return Tuple(m)(expr);
}

// narrow_i16x8_s(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _narrow_i16x8_s = function (Tuple, left, right, m) {
  const expr = m.i8x16.narrow_i16x8_s(left, right);
  return Tuple(m)(expr);
}

// narrow_i16x8_u(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _narrow_i16x8_u = function (Tuple, left, right, m) {
  const expr = m.i8x16.narrow_i16x8_u(left, right);
  return Tuple(m)(expr);
}
