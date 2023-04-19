// i31
// new(value: ExpressionRef): ExpressionRef;
export const _new = function (Tuple, value, m) {
  const expr = m.i31.new(value);
  return Tuple(m)(expr);
}

// get_s(i31: ExpressionRef): ExpressionRef;
export const _get_s = function (Tuple, i31, m) {
  const expr = m.i31.get_s(i31);
  return Tuple(m)(expr);
}

// get_u(i31: ExpressionRef): ExpressionRef;
export const _get_u = function (Tuple, i31, m) {
  const expr = m.i31.get_u(i31);
  return Tuple(m)(expr);
}
