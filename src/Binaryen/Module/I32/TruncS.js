// f32(value: ExpressionRef): ExpressionRef;
export const _f32 = function (Tuple, value, m) {
  const expr = m.i32.trunc_s.f32(value);
  return Tuple(m)(expr);
}

// f64(value: ExpressionRef): ExpressionRef;
export const _f64 = function (Tuple, value, m) {
  const expr = m.i32.trunc_s.f64(value);
  return Tuple(m)(expr);
}