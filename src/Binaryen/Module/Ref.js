// ref
// null(type: Type): ExpressionRef;
export const _null = function (Tuple, type, m) {
  const expr = m.ref.null(type);
  return Tuple(m)(expr);
}

// is_null(value: ExpressionRef): ExpressionRef;
export const _is_null = function (Tuple, value, m) {
  const expr = m.ref.is_null(value);
  return Tuple(m)(expr);
}

// is_func(value: ExpressionRef): ExpressionRef;
export const _is_func = function (Tuple, value, m) {
  const expr = m.ref.is_func(value);
  return Tuple(m)(expr);
}

// is_data(value: ExpressionRef): ExpressionRef;
export const _is_data = function (Tuple, value, m) {
  const expr = m.ref.is_data(value);
  return Tuple(m)(expr);
}

// is_i31(value: ExpressionRef): ExpressionRef;
export const _is_i31 = function (Tuple, value, m) {
  const expr = m.ref.is_i31(value);
  return Tuple(m)(expr);
}

// as_non_null(value: ExpressionRef): ExpressionRef;
export const _as_non_null = function (Tuple, value, m) {
  const expr = m.ref.as_non_null(value);
  return Tuple(m)(expr);
}

// as_func(value: ExpressionRef): ExpressionRef;
export const _as_func = function (Tuple, value, m) {
  const expr = m.ref.as_func(value);
  return Tuple(m)(expr);
}

// as_data(value: ExpressionRef): ExpressionRef;
export const _as_data = function (Tuple, value, m) {
  const expr = m.ref.as_data(value);
  return Tuple(m)(expr);
}

// as_i31(value: ExpressionRef): ExpressionRef;
export const _as_i31 = function (Tuple, value, m) {
  const expr = m.ref.as_i31(value);
  return Tuple(m)(expr);
}

// func(name: string, type: Type): ExpressionRef;
export const _func = function (Tuple, name, type, m) {
  const expr = m.ref.func(name, type);
  return Tuple(m)(expr);
}

// eq(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export const _eq = function (Tuple, left, right, m) {
  const expr = m.ref.eq(left, right);
  return Tuple(m)(expr);
}
