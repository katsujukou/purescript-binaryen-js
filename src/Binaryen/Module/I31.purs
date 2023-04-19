module Binaryen.Module.I31
  ( new
  , get_s
  , get_u
  ) where

import Binaryen.Module (ExpressionRef)
import Binaryen.Monad (Binaryen)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toNullable)
import Binaryen.Utils (BinaryenFn1, runBinaryenFn1)

-- new(value: ExpressionRef): ExpressionRef;
foreign import _new :: BinaryenFn1 ExpressionRef ExpressionRef

new :: ExpressionRef -> Binaryen ExpressionRef
new value = runBinaryenFn1 _new value

-- get_s(i31: ExpressionRef): ExpressionRef;
foreign import _get_s :: BinaryenFn1 ExpressionRef ExpressionRef

get_s :: ExpressionRef -> Binaryen ExpressionRef
get_s i31 = runBinaryenFn1 _get_s i31

-- get_u(i31: ExpressionRef): ExpressionRef;
foreign import _get_u :: BinaryenFn1 ExpressionRef ExpressionRef

get_u :: ExpressionRef -> Binaryen ExpressionRef
get_u i31 = runBinaryenFn1 _get_u i31
