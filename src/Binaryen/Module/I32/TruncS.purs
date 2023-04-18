module Binaryen.Module.I32.TruncS
  ( f32
  , f64
  ) where

import Binaryen.Module (ExpressionRef)
import Binaryen.Monad (Binaryen)
import Binaryen.Utils (BinaryenFn1, runBinaryenFn1)

-- f32(value: ExpressionRef): ExpressionRef;
foreign import _f32 :: BinaryenFn1 ExpressionRef ExpressionRef

f32 :: ExpressionRef -> Binaryen ExpressionRef
f32 = runBinaryenFn1 _f32

-- f64(value: ExpressionRef): ExpressionRef;
foreign import _f64 :: BinaryenFn1 ExpressionRef ExpressionRef

f64 :: ExpressionRef -> Binaryen ExpressionRef
f64 = runBinaryenFn1 _f64