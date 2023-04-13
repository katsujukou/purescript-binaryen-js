export const _local_get = function (Tuple, idx, type, m) {
  const expr = m.local.get(idx, type);
  return Tuple(m)(expr);
} 

export const _local_set = function (Tuple, idx, expr, m) {
  const expr_ = m.local.set(idx, expr);
  return Tuple(m)(expr_);
}

export const _i32_add = function (Tuple, lhs, rhs, m) {
  const expr = m.i32.add(lhs, rhs);
  return Tuple(m)(expr);
}

export const _block = function (Tuple, label, body, m) {
  const expr = m.block(label, body);
  return Tuple(m)(expr);
}

export const _return = function (Tuple, expr, m) {
  const expr_ = m.return(expr);
  return Tuple(m)(expr_);
}