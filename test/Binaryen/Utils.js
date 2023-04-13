import binaryen from "binaryen";

export const formatWat = function (wat) {
  const mod_ = binaryen.parseText(wat);
  return mod_.emitText();
}

export const _emitText = function (mod) {
  return mod.emitText();
}