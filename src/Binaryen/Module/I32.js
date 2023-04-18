// i32
// load(offset: number, align: number, ptr: ExpressionRef, name?: string): ExpressionRef;
export const _load = function (Tuple, offset, align, ptr, name, m) {
  const expr = m.i32.load(offset, align, ptr, name);
  return Tuple(m)(expr);
}

// load8_s(offset: number, align: number, ptr: ExpressionRef, name?: string): ExpressionRef;
export const _load8_s = function (Tuple, offset, align, ptr, name, m) {
  const expr = m.i32.load8_s(offset, align, ptr, name);
  return Tuple(m)(expr);
}

// load8_u(offset: number, align: number, ptr: ExpressionRef, name?: string): ExpressionRef;
export const _load8_u = function (Tuple, offset, align, ptr, name, m) {
  const expr = m.i32.load8_u(offset, align, ptr, name);
  return Tuple(m)(expr);
}

// load16_s(offset: number, align: number, ptr: ExpressionRef, name?: string): ExpressionRef;
export const _load16_s = function (Tuple, offset, align, ptr, name, m) {
  const expr = m.i32.load16_s(offset, align, ptr, name);
  return Tuple(m)(expr);
}

// load16_u(offset: number, align: number, ptr: ExpressionRef, name?: string): ExpressionRef;
export const _load16_u = function (Tuple, offset, align, ptr, name, m) {
  const expr = m.i32.load16_u(offset, align, ptr, name);
  return Tuple(m)(expr);
}

// store(offset: number, align: number, ptr: ExpressionRef, value: ExpressionRef, name?: string): ExpressionRef;
export const _store = function (Tuple, offset, align, ptr, value, name, m) {
  const expr = m.i32.store(offset, align, ptr, value, name);
  return Tuple(m)(expr);
}

// store8(offset: number, align: number, ptr: ExpressionRef, value: ExpressionRef, name?: string): ExpressionRef;
export const _store8 = function (Tuple, offset, align, ptr, value, name, m) {
  const expr = m.i32.store8(offset, align, ptr, value, name);
  return Tuple(m)(expr);
}

// store16(offset: number, align: number, ptr: ExpressionRef, value: ExpressionRef, name?: string): ExpressionRef;
export const _store16 = function (Tuple, offset, align, ptr, value, name, m) {
  const expr = m.i32.store16(offset, align, ptr, value, name);
  return Tuple(m)(expr);
}

// const(value: number): ExpressionRef;
export const _const = function (Tuple, value, m) {
  const expr = m.i32.const(value);
  return Tuple(m)(expr);
}

// clz(value: ExpressionRef): ExpressionRef;
export const _clz = function (Tuple, value, m) {
  const expr = m.i32.clz(value);
  return Tuple(m)(expr);
}

// ctz(value: ExpressionRef): ExpressionRef;
export const _ctz = function (Tuple, value, m) {
  const expr = m.i32.ctz(value);
  return Tuple(m)(expr);
}

// popcnt(value: ExpressionRef): ExpressionRef;
export const _popcnt = function (Tuple, value, m) {
  const expr = m.i32.popcnt(value);
  return Tuple(m)(expr);
}

// eqz(value: ExpressionRef): ExpressionRef;
export const _eqz = function (Tuple, value, m) {
  const expr = m.i32.eqz(value);
  return Tuple(m)(expr);
}

// reinterpret(value: ExpressionRef): ExpressionRef;
export const _reinterpret = function (Tuple, value, m) {
  const expr = m.i32.reinterpret(value);
  return Tuple(m)(expr);
}

// extend8_s(value: ExpressionRef): ExpressionRef;
export const _extend8_s = function (Tuple, value, m) {
  const expr = m.i32.extend8_s(value);
  return Tuple(m)(expr);
}

// extend16_s(value: ExpressionRef): ExpressionRef;
export const _extend16_s = function (Tuple, value, m) {
  const expr = m.i32.extend16_s(value);
  return Tuple(m)(expr);
}

// wrap(value: ExpressionRef): ExpressionRef;
export const _wrap = function (Tuple, value, m) {
  const expr = m.i32.wrap(value);
  return Tuple(m)(expr);
}

// add(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _add = function (Tuple, left, right, m) {
  const expr = m.i32.add(left, right);
  return Tuple(m)(expr);
}

// sub(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _sub = function (Tuple, left, right, m) {
  const expr = m.i32.sub(left, right);
  return Tuple(m)(expr);
}

// mul(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _mul = function (Tuple, left, right, m) {
  const expr = m.i32.mul(left, right);
  return Tuple(m)(expr);
}

// div_s(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _div_s = function (Tuple, left, right, m) {
  const expr = m.i32.div_s(left, right);
  return Tuple(m)(expr);
}

// div_u(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _div_u = function (Tuple, left, right, m) {
  const expr = m.i32.div_u(left, right);
  return Tuple(m)(expr);
}

// rem_s(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _rem_s = function (Tuple, left, right, m) {
  const expr = m.i32.rem_s(left, right);
  return Tuple(m)(expr);
}

// rem_u(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _rem_u = function (Tuple, left, right, m) {
  const expr = m.i32.rem_u(left, right);
  return Tuple(m)(expr);
}

// and(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _and = function (Tuple, left, right, m) {
  const expr = m.i32.and(left, right);
  return Tuple(m)(expr);
}

// or(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _or = function (Tuple, left, right, m) {
  const expr = m.i32.or(left, right);
  return Tuple(m)(expr);
}

// xor(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _xor = function (Tuple, left, right, m) {
  const expr = m.i32.xor(left, right);
  return Tuple(m)(expr);
}

// shl(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _shl = function (Tuple, left, right, m) {
  const expr = m.i32.shl(left, right);
  return Tuple(m)(expr);
}

// shr_u(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _shr_u = function (Tuple, left, right, m) {
  const expr = m.i32.shr_u(left, right);
  return Tuple(m)(expr);
}

// shr_s(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _shr_s = function (Tuple, left, right, m) {
  const expr = m.i32.shr_s(left, right);
  return Tuple(m)(expr);
}

// rotl(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _rotl = function (Tuple, left, right, m) {
  const expr = m.i32.rotl(left, right);
  return Tuple(m)(expr);
}

// rotr(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _rotr = function (Tuple, left, right, m) {
  const expr = m.i32.rotr(left, right);
  return Tuple(m)(expr);
}

// eq(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _eq = function (Tuple, left, right, m) {
  const expr = m.i32.eq(left, right);
  return Tuple(m)(expr);
}

// ne(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _ne = function (Tuple, left, right, m) {
  const expr = m.i32.ne(left, right);
  return Tuple(m)(expr);
}

// lt_s(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _lt_s = function (Tuple, left, right, m) {
  const expr = m.i32.lt_s(left, right);
  return Tuple(m)(expr);
}

// lt_u(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _lt_u = function (Tuple, left, right, m) {
  const expr = m.i32.lt_u(left, right);
  return Tuple(m)(expr);
}

// le_s(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _le_s = function (Tuple, left, right, m) {
  const expr = m.i32.le_s(left, right);
  return Tuple(m)(expr);
}

// le_u(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _le_u = function (Tuple, left, right, m) {
  const expr = m.i32.le_u(left, right);
  return Tuple(m)(expr);
}

// gt_s(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _gt_s = function (Tuple, left, right, m) {
  const expr = m.i32.gt_s(left, right);
  return Tuple(m)(expr);
}

// gt_u(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _gt_u = function (Tuple, left, right, m) {
  const expr = m.i32.gt_u(left, right);
  return Tuple(m)(expr);
}

// ge_s(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _ge_s = function (Tuple, left, right, m) {
  const expr = m.i32.ge_s(left, right);
  return Tuple(m)(expr);
}

// ge_u(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _ge_u = function (Tuple, left, right, m) {
  const expr = m.i32.ge_u(left, right);
  return Tuple(m)(expr);
}

// pop(): ExpressionRef;
export const _pop = function (Tuple, m) {
  const expr = i32.pop();
  return Tuple(m)(expr);
}