module Binaryen.Module.Ref
  ( null
  , is_null
  , is_func
  , is_data
  , is_i31
  , as_non_null
  , as_func
  , as_data
  , as_i31
  , func
  , eq
  ) where

import Binaryen.Module (ExpressionRef)
import Binaryen.Monad (Binaryen)
import Binaryen.Type (Type_)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toNullable)
import Binaryen.Utils (BinaryenFn1, runBinaryenFn1, BinaryenFn2, runBinaryenFn2)

-- null(type: Type_): ExpressionRef;
foreign import _null :: BinaryenFn1 Type_ ExpressionRef

null :: Type_ -> Binaryen ExpressionRef
null type_ = runBinaryenFn1 _null type_

-- is_null(value: ExpressionRef): ExpressionRef;
foreign import _is_null :: BinaryenFn1 ExpressionRef ExpressionRef

is_null :: ExpressionRef -> Binaryen ExpressionRef
is_null value = runBinaryenFn1 _is_null value

-- is_func(value: ExpressionRef): ExpressionRef;
foreign import _is_func :: BinaryenFn1 ExpressionRef ExpressionRef

is_func :: ExpressionRef -> Binaryen ExpressionRef
is_func value = runBinaryenFn1 _is_func value

-- is_data(value: ExpressionRef): ExpressionRef;
foreign import _is_data :: BinaryenFn1 ExpressionRef ExpressionRef

is_data :: ExpressionRef -> Binaryen ExpressionRef
is_data value = runBinaryenFn1 _is_data value

-- is_i31(value: ExpressionRef): ExpressionRef;
foreign import _is_i31 :: BinaryenFn1 ExpressionRef ExpressionRef

is_i31 :: ExpressionRef -> Binaryen ExpressionRef
is_i31 value = runBinaryenFn1 _is_i31 value

-- as_non_null(value: ExpressionRef): ExpressionRef;
foreign import _as_non_null :: BinaryenFn1 ExpressionRef ExpressionRef

as_non_null :: ExpressionRef -> Binaryen ExpressionRef
as_non_null value = runBinaryenFn1 _as_non_null value

-- as_func(value: ExpressionRef): ExpressionRef;
foreign import _as_func :: BinaryenFn1 ExpressionRef ExpressionRef

as_func :: ExpressionRef -> Binaryen ExpressionRef
as_func value = runBinaryenFn1 _as_func value

-- as_data(value: ExpressionRef): ExpressionRef;
foreign import _as_data :: BinaryenFn1 ExpressionRef ExpressionRef

as_data :: ExpressionRef -> Binaryen ExpressionRef
as_data value = runBinaryenFn1 _as_data value

-- as_i31(value: ExpressionRef): ExpressionRef;
foreign import _as_i31 :: BinaryenFn1 ExpressionRef ExpressionRef

as_i31 :: ExpressionRef -> Binaryen ExpressionRef
as_i31 value = runBinaryenFn1 _as_i31 value

-- func(name: string, type: Type_): ExpressionRef;
foreign import _func :: BinaryenFn2 String Type_ ExpressionRef

func :: String -> Type_ -> Binaryen ExpressionRef
func name type_ = runBinaryenFn2 _func name type_

-- eq(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _eq :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

eq :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
eq left right = runBinaryenFn2 _eq left right
