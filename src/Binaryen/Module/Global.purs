module Binaryen.Module.Global where

import Binaryen.Module (ExpressionRef)
import Binaryen.Monad (Binaryen)
import Binaryen.Type (Type_)
import Binaryen.Utils (BinaryenFn2, runBinaryenFn2)

-- global.get(name: string, type: Type): ExpressionRef;
foreign import _get :: BinaryenFn2 String Type_ ExpressionRef

get :: String -> Type_ -> Binaryen ExpressionRef
get = runBinaryenFn2 _get

-- global.set(name: string, value: ExpressionRef): ExpressionRef;
foreign import _set :: BinaryenFn2 String ExpressionRef ExpressionRef

set :: String -> ExpressionRef -> Binaryen ExpressionRef
set = runBinaryenFn2 _set
