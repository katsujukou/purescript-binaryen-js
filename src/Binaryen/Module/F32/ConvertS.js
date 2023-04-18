// f32.convert_s
// i32(value: ExpressionRef): ExpressionRef;
export const _i32 = function (Tuple, value, m) {
  const expr = m.f32.convert_s.i32(value);
  return Tuple(m)(expr);
}

// i64(value: ExpressionRef): ExpressionRef;
export const _i64 = function (Tuple, value, m) {
  const expr = m.f32.convert_s.i64(value);
  return Tuple(m)(expr);
}
