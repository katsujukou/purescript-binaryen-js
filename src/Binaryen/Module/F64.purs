module Binaryen.Module.F64
  ( load
  , store
  , const
  , const_bits
  , neg
  , abs
  , ceil
  , floor
  , trunc
  , nearest
  , sqrt
  , reinterpret
  , promote
  , add
  , sub
  , mul
  , div
  , copysign
  , min
  , max
  , eq
  , ne
  , lt
  , le
  , gt
  , ge
  , pop
  ) where

import Binaryen (ExpressionRef)
import Binaryen.Monad (Binaryen)
import Binaryen.Utils (BinaryenFn0, runBinaryenFn0, BinaryenFn1, runBinaryenFn1, BinaryenFn2, runBinaryenFn2, BinaryenFn4, runBinaryenFn4, BinaryenFn5, runBinaryenFn5)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toNullable)

-- load(offset: number, align: number, ptr: ExpressionRef, name?: string): ExpressionRef;
foreign import _load :: BinaryenFn4 Number Number ExpressionRef (Nullable String) ExpressionRef

load :: Number -> Number -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
load offset align ptr name = runBinaryenFn4 _load offset align ptr (toNullable name)

-- store(offset: number, align: number, ptr: ExpressionRef, value: ExpressionRef, name?: string): ExpressionRef;
foreign import _store :: BinaryenFn5 Number Number ExpressionRef ExpressionRef (Nullable String) ExpressionRef

store :: Number -> Number -> ExpressionRef -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
store offset align ptr value name = runBinaryenFn5 _store offset align ptr value (toNullable name)

-- const(value: number): ExpressionRef;
foreign import _const :: BinaryenFn1 Number ExpressionRef

const :: Number -> Binaryen ExpressionRef
const value = runBinaryenFn1 _const value

-- const_bits(low: number, high: number): ExpressionRef;
foreign import _const_bits :: BinaryenFn2 Number Number ExpressionRef

const_bits :: Number -> Number -> Binaryen ExpressionRef
const_bits low high = runBinaryenFn2 _const_bits low high

-- neg(value: ExpressionRef): ExpressionRef;
foreign import _neg :: BinaryenFn1 ExpressionRef ExpressionRef

neg :: ExpressionRef -> Binaryen ExpressionRef
neg value = runBinaryenFn1 _neg value

-- abs(value: ExpressionRef): ExpressionRef;
foreign import _abs :: BinaryenFn1 ExpressionRef ExpressionRef

abs :: ExpressionRef -> Binaryen ExpressionRef
abs value = runBinaryenFn1 _abs value

-- ceil(value: ExpressionRef): ExpressionRef;
foreign import _ceil :: BinaryenFn1 ExpressionRef ExpressionRef

ceil :: ExpressionRef -> Binaryen ExpressionRef
ceil value = runBinaryenFn1 _ceil value

-- floor(value: ExpressionRef): ExpressionRef;
foreign import _floor :: BinaryenFn1 ExpressionRef ExpressionRef

floor :: ExpressionRef -> Binaryen ExpressionRef
floor value = runBinaryenFn1 _floor value

-- trunc(value: ExpressionRef): ExpressionRef;
foreign import _trunc :: BinaryenFn1 ExpressionRef ExpressionRef

trunc :: ExpressionRef -> Binaryen ExpressionRef
trunc value = runBinaryenFn1 _trunc value

-- nearest(value: ExpressionRef): ExpressionRef;
foreign import _nearest :: BinaryenFn1 ExpressionRef ExpressionRef

nearest :: ExpressionRef -> Binaryen ExpressionRef
nearest value = runBinaryenFn1 _nearest value

-- sqrt(value: ExpressionRef): ExpressionRef;
foreign import _sqrt :: BinaryenFn1 ExpressionRef ExpressionRef

sqrt :: ExpressionRef -> Binaryen ExpressionRef
sqrt value = runBinaryenFn1 _sqrt value

-- reinterpret(value: ExpressionRef): ExpressionRef;
foreign import _reinterpret :: BinaryenFn1 ExpressionRef ExpressionRef

reinterpret :: ExpressionRef -> Binaryen ExpressionRef
reinterpret value = runBinaryenFn1 _reinterpret value

-- promote(value: ExpressionRef): ExpressionRef;
foreign import _promote :: BinaryenFn1 ExpressionRef ExpressionRef

promote :: ExpressionRef -> Binaryen ExpressionRef
promote value = runBinaryenFn1 _promote value

-- add(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _add :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

add :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
add left right = runBinaryenFn2 _add left right

-- sub(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _sub :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

sub :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
sub left right = runBinaryenFn2 _sub left right

-- mul(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _mul :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

mul :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
mul left right = runBinaryenFn2 _mul left right

-- div(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _div :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

div :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
div left right = runBinaryenFn2 _div left right

-- copysign(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _copysign :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

copysign :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
copysign left right = runBinaryenFn2 _copysign left right

-- min(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _min :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

min :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
min left right = runBinaryenFn2 _min left right

-- max(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _max :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

max :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
max left right = runBinaryenFn2 _max left right

-- eq(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _eq :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

eq :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
eq left right = runBinaryenFn2 _eq left right

-- ne(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _ne :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

ne :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
ne left right = runBinaryenFn2 _ne left right

-- lt(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _lt :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

lt :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
lt left right = runBinaryenFn2 _lt left right

-- le(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _le :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

le :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
le left right = runBinaryenFn2 _le left right

-- gt(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _gt :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

gt :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
gt left right = runBinaryenFn2 _gt left right

-- ge(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _ge :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

ge :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
ge left right = runBinaryenFn2 _ge left right

-- pop(): ExpressionRef;
foreign import _pop :: BinaryenFn0 ExpressionRef

pop :: Binaryen ExpressionRef
pop = runBinaryenFn0 _pop
