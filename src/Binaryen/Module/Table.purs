module Binaryen.Module.Table
  ( get
  , grow
  , set
  , size
  ) where

import Binaryen.Module (ExpressionRef)
import Binaryen.Monad (Binaryen)
import Binaryen.Type (Type_)
import Binaryen.Utils (BinaryenFn1, BinaryenFn3, runBinaryenFn1, runBinaryenFn3)

-- table.get(name: string, index: ExpressionRef, type: Type): ExpressionRef;
foreign import _get :: BinaryenFn3 String ExpressionRef Type_ ExpressionRef

get :: String -> ExpressionRef -> Type_ -> Binaryen ExpressionRef
get = runBinaryenFn3 _get

-- table.set(name: string, index: ExpressionRef, value: ExpressionRef): ExpressionRef;
foreign import _set :: BinaryenFn3 String ExpressionRef ExpressionRef ExpressionRef

set :: String -> ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
set = runBinaryenFn3 _set

-- table.size(name: string): ExpressionRef;
foreign import _size :: BinaryenFn1 String ExpressionRef

size :: String -> Binaryen ExpressionRef
size = runBinaryenFn1 _size

-- table.grow(name: string, value: ExpressionRef, delta: ExpressionRef): ExpressionRef;
foreign import _grow :: BinaryenFn3 String ExpressionRef ExpressionRef ExpressionRef

grow :: String -> ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
grow = runBinaryenFn3 _grow

-- // TODO: init, fill, copy
