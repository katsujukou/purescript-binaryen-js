module Binaryen.Module.F32.ConvertU
  ( i32
  , i64
  ) where

import Binaryen (ExpressionRef)
import Binaryen.Monad (Binaryen)
import Binaryen.Utils (BinaryenFn1, runBinaryenFn1)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toNullable)

-- i32(value: ExpressionRef): ExpressionRef;
foreign import _i32 :: BinaryenFn1 ExpressionRef ExpressionRef

i32 :: ExpressionRef -> Binaryen ExpressionRef
i32 value = runBinaryenFn1 _i32 value

-- i64(value: ExpressionRef): ExpressionRef;
foreign import _i64 :: BinaryenFn1 ExpressionRef ExpressionRef

i64 :: ExpressionRef -> Binaryen ExpressionRef
i64 value = runBinaryenFn1 _i64 value
