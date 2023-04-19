module Binaryen.Module
  ( ExportRef
  , ExpressionRef
  , block
  , br
  , br_if
  , call
  , call_indirect
  , if_
  , loop
  , return_call
  , return_call_indirect
  , switch
  ) where

import Binaryen.Monad (Binaryen)
import Binaryen.Type (Type_)
import Binaryen.Utils (BinaryenFn2, BinaryenFn3, BinaryenFn4, runBinaryenFn2, runBinaryenFn3, runBinaryenFn4)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toNullable)

data ExportRef
data ExpressionRef

-- block(label: string | null, children: ExpressionRef[], resultType?: Type): ExpressionRef;
foreign import _block :: BinaryenFn3 (Nullable String) (Array ExpressionRef) (Nullable Type_) ExpressionRef

block :: Maybe String -> Array ExpressionRef -> Maybe Type_ -> Binaryen ExpressionRef
block label children resultType = runBinaryenFn3 _block (toNullable label) children (toNullable resultType)

-- if(condition: ExpressionRef, ifTrue: ExpressionRef, ifFalse?: ExpressionRef): ExpressionRef;
foreign import _if :: BinaryenFn3 ExpressionRef ExpressionRef (Nullable ExpressionRef) ExpressionRef

if_ :: ExpressionRef -> ExpressionRef -> Maybe ExpressionRef -> Binaryen ExpressionRef
if_ condition ifTrue ifFalse = runBinaryenFn3 _if condition ifTrue (toNullable ifFalse)

-- loop(label: string | null, body: ExpressionRef): ExpressionRef;
foreign import _loop :: BinaryenFn2 (Nullable String) ExpressionRef ExpressionRef

loop :: Maybe String -> ExpressionRef -> Binaryen ExpressionRef
loop label body = runBinaryenFn2 _loop (toNullable label) body

-- br(label: string, condition?: ExpressionRef, value?: ExpressionRef): ExpressionRef;
foreign import _br :: BinaryenFn3 String (Nullable ExpressionRef) (Nullable ExpressionRef) ExpressionRef

br :: String -> Maybe ExpressionRef -> Maybe ExpressionRef -> Binaryen ExpressionRef
br label cond val = runBinaryenFn3 _br label (toNullable cond) (toNullable val)

-- br_if(label: string, condition?: ExpressionRef, value?: ExpressionRef): ExpressionRef;
foreign import _br_if :: BinaryenFn3 String (Nullable ExpressionRef) (Nullable ExpressionRef) ExpressionRef

br_if :: String -> Maybe ExpressionRef -> Maybe ExpressionRef -> Binaryen ExpressionRef
br_if label cond val = runBinaryenFn3 _br_if label (toNullable cond) (toNullable val)

-- switch(labels: string[], defaultLabel: string, condition: ExpressionRef, value?: ExpressionRef): ExpressionRef;
foreign import _switch :: BinaryenFn4 (Array String) String ExpressionRef (Nullable ExpressionRef) ExpressionRef

switch :: Array String -> String -> ExpressionRef -> Maybe ExpressionRef -> Binaryen ExpressionRef
switch labels defaultLabel condition value = runBinaryenFn4 _switch labels defaultLabel condition (toNullable value)

-- call(name: string, operands: ExpressionRef[], returnType: Type): ExpressionRef;
foreign import _call :: BinaryenFn3 String (Array ExpressionRef) Type_ ExpressionRef

call :: String -> Array ExpressionRef -> Type_ -> Binaryen ExpressionRef
call = runBinaryenFn3 _call

-- return_call(name: string, operands: ExpressionRef[], returnType: Type): ExpressionRef;
foreign import _return_call :: BinaryenFn3 String (Array ExpressionRef) Type_ ExpressionRef

return_call :: String -> Array ExpressionRef -> Type_ -> Binaryen ExpressionRef
return_call = runBinaryenFn3 _return_call

-- call_indirect(target: ExpressionRef, operands: ExpressionRef[], params: Type, results: Type): ExpressionRef;
foreign import _call_indirect :: BinaryenFn4 ExpressionRef (Array ExpressionRef) Type_ Type_ ExpressionRef

call_indirect :: ExpressionRef -> Array ExpressionRef -> Type_ -> Type_ -> Binaryen ExpressionRef
call_indirect = runBinaryenFn4 _call_indirect

--return_call_indirect(target: ExpressionRef, operands: ExpressionRef[], params: Type, results: Type): ExpressionRef;
foreign import _return_call_indirect :: BinaryenFn4 ExpressionRef (Array ExpressionRef) Type_ Type_ ExpressionRef

return_call_indirect :: ExpressionRef -> Array ExpressionRef -> Type_ -> Type_ -> Binaryen ExpressionRef
return_call_indirect = runBinaryenFn4 _return_call_indirect