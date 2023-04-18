// -- atomic.notify(ptr: ExpressionRef, notifyCount: ExpressionRef, name?: string): ExpressionRef;
export const _notify = function (Tuple, ptr, notifyCount, name, m) {
  const expr = m.memory.atomic.notify(ptr, notifyCount, name);
  return Tuple(m)(expr);
}

// -- atomic.wait32(ptr: ExpressionRef, expected: ExpressionRef, timeout: ExpressionRef, name?: string): ExpressionRef;
export const _wait32 = function (Tuple, ptr, expected, timeout, name, m) {
  const expr = m.memory.atomic.wait32(ptr, expected, timeout, name);
  return Tuple(m)(expr);
}

// -- atomic.wait64(ptr: ExpressionRef, expected: ExpressionRef, timeout: ExpressionRef, name?: string): ExpressionRef;
export const _wait64 = function (Tuple, ptr, expected, timeout, m) {
  const expr = m.memory.atomic.wait64(ptr, expected, timeout);
  return Tuple(m)(expr);
}