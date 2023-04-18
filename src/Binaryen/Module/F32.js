// f32
// load(offset: number, align: number, ptr: ExpressionRef, name?: string): ExpressionRef;
export const _load = function (Tuple, offset, align, ptr, name, m) {
  const expr = m.f32.load(offset, align, ptr, name);
  return Tuple(m)(expr);
}

// store(offset: number, align: number, ptr: ExpressionRef, value: ExpressionRef, name?: string): ExpressionRef;
export const _store = function (Tuple, offset, align, ptr, value, name, m) {
  const expr = m.f32.store(offset, align, ptr, value, name);
  return Tuple(m)(expr);
}

// const(value: number): ExpressionRef;
export const _const = function (Tuple, value, m) {
  const expr = m.f32.const(value);
  return Tuple(m)(expr);
}

// const_bits(value: number): ExpressionRef;
export const _const_bits = function (Tuple, value, m) {
  const expr = m.f32.const_bits(value);
  return Tuple(m)(expr);
}

// neg(value: ExpressionRef): ExpressionRef;
export const _neg = function (Tuple, value, m) {
  const expr = m.f32.neg(value);
  return Tuple(m)(expr);
}

// abs(value: ExpressionRef): ExpressionRef;
export const _abs = function (Tuple, value, m) {
  const expr = m.f32.abs(value);
  return Tuple(m)(expr);
}

// ceil(value: ExpressionRef): ExpressionRef;
export const _ceil = function (Tuple, value, m) {
  const expr = m.f32.ceil(value);
  return Tuple(m)(expr);
}

// floor(value: ExpressionRef): ExpressionRef;
export const _floor = function (Tuple, value, m) {
  const expr = m.f32.floor(value);
  return Tuple(m)(expr);
}

// trunc(value: ExpressionRef): ExpressionRef;
export const _trunc = function (Tuple, value, m) {
  const expr = m.f32.trunc(value);
  return Tuple(m)(expr);
}

// nearest(value: ExpressionRef): ExpressionRef;
export const _nearest = function (Tuple, value, m) {
  const expr = m.f32.nearest(value);
  return Tuple(m)(expr);
}

// sqrt(value: ExpressionRef): ExpressionRef;
export const _sqrt = function (Tuple, value, m) {
  const expr = m.f32.sqrt(value);
  return Tuple(m)(expr);
}

// reinterpret(value: ExpressionRef): ExpressionRef;
export const _reinterpret = function (Tuple, value, m) {
  const expr = m.f32.reinterpret(value);
  return Tuple(m)(expr);
}

// demote(value: ExpressionRef): ExpressionRef;
export const _demote = function (Tuple, value, m) {
  const expr = m.f32.demote(value);
  return Tuple(m)(expr);
}

// add(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _add = function (Tuple, left, right, m) {
  const expr = m.f32.add(left, right);
  return Tuple(m)(expr);
}

// sub(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _sub = function (Tuple, left, right, m) {
  const expr = m.f32.sub(left, right);
  return Tuple(m)(expr);
}

// mul(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _mul = function (Tuple, left, right, m) {
  const expr = m.f32.mul(left, right);
  return Tuple(m)(expr);
}

// div(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _div = function (Tuple, left, right, m) {
  const expr = m.f32.div(left, right);
  return Tuple(m)(expr);
}

// copysign(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _copysign = function (Tuple, left, right, m) {
  const expr = m.f32.copysign(left, right);
  return Tuple(m)(expr);
}

// min(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _min = function (Tuple, left, right, m) {
  const expr = m.f32.min(left, right);
  return Tuple(m)(expr);
}

// max(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _max = function (Tuple, left, right, m) {
  const expr = m.f32.max(left, right);
  return Tuple(m)(expr);
}

// eq(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _eq = function (Tuple, left, right, m) {
  const expr = m.f32.eq(left, right);
  return Tuple(m)(expr);
}

// ne(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _ne = function (Tuple, left, right, m) {
  const expr = m.f32.ne(left, right);
  return Tuple(m)(expr);
}

// lt(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _lt = function (Tuple, left, right, m) {
  const expr = m.f32.lt(left, right);
  return Tuple(m)(expr);
}

// le(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _le = function (Tuple, left, right, m) {
  const expr = m.f32.le(left, right);
  return Tuple(m)(expr);
}

// gt(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _gt = function (Tuple, left, right, m) {
  const expr = m.f32.gt(left, right);
  return Tuple(m)(expr);
}

// ge(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _ge = function (Tuple, left, right, m) {
  const expr = m.f32.ge(left, right);
  return Tuple(m)(expr);
}

// pop(): ExpressionRef;
export const _pop = function (Tuple, m) {
  const expr = m.f32.pop();
  return Tuple(m)(expr);
}
