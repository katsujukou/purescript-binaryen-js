export const _get = function (Tuple, name, type, m) {
  const expr = m.global.get(name, type);
  return Tuple(m)(expr);
}
export const _set = function (Tuple, name, value, m) {
  const expr = m.global.set(name, value);
  return Tuple(m)(expr);
}