// atomic
export const _fence = function (Tuple, m) {
  const expr = m.atomic.fence();
  return Tuple(m)(expr);
} 