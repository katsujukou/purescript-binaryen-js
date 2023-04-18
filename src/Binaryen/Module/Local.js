
export const _get = function (Tuple, index, type, m) {
  const expr = m.local.get(index, type);
  return Tuple(m)(expr);
} 

export const _set = function (Tuple, index, value, m) {
  const expr = m.local.set(index, value);
  return Tuple(m)(expr);
}

export const _tee = function (Tuple, index, value, type, m)  {
  const expr = m.local.tee(index, value, type);
  return Tuple(m)(expr);
}
