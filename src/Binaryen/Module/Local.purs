module Binaryen.Module.Local
  ( get
  , set
  , tee
  ) where

import Binaryen.Module (ExpressionRef)
import Binaryen.Monad (Binaryen)
import Binaryen.Type (Type_)
import Binaryen.Utils (BinaryenFn2, BinaryenFn3, runBinaryenFn2, runBinaryenFn3)
import Data.Int (toNumber)

-- local.get(index: number, type: Type): ExpressionRef;
foreign import _get :: BinaryenFn2 Number Type_ ExpressionRef

get :: Int -> Type_ -> Binaryen ExpressionRef
get index type_ = runBinaryenFn2 _get (toNumber index) type_

-- local.set(index: number, value: ExpressionRef): ExpressionRef;
foreign import _set :: BinaryenFn2 Number ExpressionRef ExpressionRef

set :: Int -> ExpressionRef -> Binaryen ExpressionRef
set index type_ = runBinaryenFn2 _set (toNumber index) type_

-- local.tee(index: number, value: ExpressionRef, type: Type): ExpressionRef;
foreign import _tee :: BinaryenFn3 Number ExpressionRef Type_ ExpressionRef

tee :: Int -> ExpressionRef -> Type_ -> Binaryen ExpressionRef
tee index = runBinaryenFn3 _tee (toNumber index)

