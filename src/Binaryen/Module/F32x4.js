// f32x4
// splat(value: ExpressionRef): ExpressionRef;
export const _splat = function (Tuple, value, m) {
  const expr = m.f32x4.splat(value);
  return Tuple(m)(expr);
}

// extract_lane(vec: ExpressionRef, index: ExpressionRef): ExpressionRef;
export const _extract_lane = function (Tuple, vec, index, m) {
  const expr = m.f32x4.extract_lane(vec, index);
  return Tuple(m)(expr);
}

// replace_lane(vec: ExpressionRef, index: ExpressionRef, value: ExpressionRef): ExpressionRef;
export const _replace_lane = function (Tuple, vec, index, value, m) {
  const expr = m.f32x4.replace_lane(vec, index, value);
  return Tuple(m)(expr);
}

// eq(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _eq = function (Tuple, left, right, m) {
  const expr = m.f32x4.eq(left, right);
  return Tuple(m)(expr);
}

// ne(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _ne = function (Tuple, left, right, m) {
  const expr = m.f32x4.ne(left, right);
  return Tuple(m)(expr);
}

// lt(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _lt = function (Tuple, left, right, m) {
  const expr = m.f32x4.lt(left, right);
  return Tuple(m)(expr);
}

// gt(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _gt = function (Tuple, left, right, m) {
  const expr = m.f32x4.gt(left, right);
  return Tuple(m)(expr);
}

// le(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _le = function (Tuple, left, right, m) {
  const expr = m.f32x4.le(left, right);
  return Tuple(m)(expr);
}

// ge(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _ge = function (Tuple, left, right, m) {
  const expr = m.f32x4.ge(left, right);
  return Tuple(m)(expr);
}

// abs(value: ExpressionRef): ExpressionRef;
export const _abs = function (Tuple, value, m) {
  const expr = m.f32x4.abs(value);
  return Tuple(m)(expr);
}

// neg(value: ExpressionRef): ExpressionRef;
export const _neg = function (Tuple, value, m) {
  const expr = m.f32x4.neg(value);
  return Tuple(m)(expr);
}

// sqrt(value: ExpressionRef): ExpressionRef;
export const _sqrt = function (Tuple, value, m) {
  const expr = m.f32x4.sqrt(value);
  return Tuple(m)(expr);
}

// add(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _add = function (Tuple, left, right, m) {
  const expr = m.f32x4.add(left, right);
  return Tuple(m)(expr);
}

// sub(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _sub = function (Tuple, left, right, m) {
  const expr = m.f32x4.sub(left, right);
  return Tuple(m)(expr);
}

// mul(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _mul = function (Tuple, left, right, m) {
  const expr = m.f32x4.mul(left, right);
  return Tuple(m)(expr);
}

// div(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _div = function (Tuple, left, right, m) {
  const expr = m.f32x4.div(left, right);
  return Tuple(m)(expr);
}

// min(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _min = function (Tuple, left, right, m) {
  const expr = m.f32x4.min(left, right);
  return Tuple(m)(expr);
}

// max(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _max = function (Tuple, left, right, m) {
  const expr = m.f32x4.max(left, right);
  return Tuple(m)(expr);
}

// pmin(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _pmin = function (Tuple, left, right, m) {
  const expr = m.f32x4.pmin(left, right);
  return Tuple(m)(expr);
}

// pmax(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _pmax = function (Tuple, left, right, m) {
  const expr = m.f32x4.pmax(left, right);
  return Tuple(m)(expr);
}

// ceil(value: ExpressionRef): ExpressionRef;
export const _ceil = function (Tuple, value, m) {
  const expr = m.f32x4.ceil(value);
  return Tuple(m)(expr);
}

// floor(value: ExpressionRef): ExpressionRef;
export const _floor = function (Tuple, value, m) {
  const expr = m.f32x4.floor(value);
  return Tuple(m)(expr);
}

// trunc(value: ExpressionRef): ExpressionRef;
export const _trunc = function (Tuple, value, m) {
  const expr = m.f32x4.trunc(value);
  return Tuple(m)(expr);
}

// nearest(value: ExpressionRef): ExpressionRef;
export const _nearest = function (Tuple, value, m) {
  const expr = m.f32x4.nearest(value);
  return Tuple(m)(expr);
}

// convert_i32x4_s(value: ExpressionRef): ExpressionRef;
export const _convert_i32x4_s = function (Tuple, value, m) {
  const expr = m.f32x4.convert_i32x4_s(value);
  return Tuple(m)(expr);
}

// convert_i32x4_u(value: ExpressionRef): ExpressionRef;
export const _convert_i32x4_u = function (Tuple, value, m) {
  const expr = m.f32x4.convert_i32x4_u(value);
  return Tuple(m)(expr);
}

// demote_f64x2_zero(value: ExpressionRef): ExpressionRef;
export const _demote_f64x2_zero = function (Tuple, value, m) {
  const expr = m.f32x4.demote_f64x2_zero(value);
  return Tuple(m)(expr);
}
