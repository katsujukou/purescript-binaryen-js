module Binaryen.Module.F32x4
  ( splat
  , extract_lane
  , replace_lane
  , eq
  , ne
  , lt
  , gt
  , le
  , ge
  , abs
  , neg
  , sqrt
  , add
  , sub
  , mul
  , div
  , min
  , max
  , pmin
  , pmax
  , ceil
  , floor
  , trunc
  , nearest
  , convert_i32x4_s
  , convert_i32x4_u
  , demote_f64x2_zero
  ) where

import Binaryen.Module (ExpressionRef)
import Binaryen.Monad (Binaryen)
import Binaryen.Utils (BinaryenFn1, runBinaryenFn1, BinaryenFn2, runBinaryenFn2, BinaryenFn3, runBinaryenFn3)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toNullable)

-- splat(value: ExpressionRef): ExpressionRef;
foreign import _splat :: BinaryenFn1 ExpressionRef ExpressionRef

splat :: ExpressionRef -> Binaryen ExpressionRef
splat value = runBinaryenFn1 _splat value

-- extract_lane(vec: ExpressionRef, index: ExpressionRef): ExpressionRef;
foreign import _extract_lane :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

extract_lane :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
extract_lane vec index = runBinaryenFn2 _extract_lane vec index

-- replace_lane(vec: ExpressionRef, index: ExpressionRef, value: ExpressionRef): ExpressionRef;
foreign import _replace_lane :: BinaryenFn3 ExpressionRef ExpressionRef ExpressionRef ExpressionRef

replace_lane :: ExpressionRef -> ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
replace_lane vec index value = runBinaryenFn3 _replace_lane vec index value

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

-- gt(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _gt :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

gt :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
gt left right = runBinaryenFn2 _gt left right

-- le(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _le :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

le :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
le left right = runBinaryenFn2 _le left right

-- ge(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _ge :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

ge :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
ge left right = runBinaryenFn2 _ge left right

-- abs(value: ExpressionRef): ExpressionRef;
foreign import _abs :: BinaryenFn1 ExpressionRef ExpressionRef

abs :: ExpressionRef -> Binaryen ExpressionRef
abs value = runBinaryenFn1 _abs value

-- neg(value: ExpressionRef): ExpressionRef;
foreign import _neg :: BinaryenFn1 ExpressionRef ExpressionRef

neg :: ExpressionRef -> Binaryen ExpressionRef
neg value = runBinaryenFn1 _neg value

-- sqrt(value: ExpressionRef): ExpressionRef;
foreign import _sqrt :: BinaryenFn1 ExpressionRef ExpressionRef

sqrt :: ExpressionRef -> Binaryen ExpressionRef
sqrt value = runBinaryenFn1 _sqrt value

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

-- min(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _min :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

min :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
min left right = runBinaryenFn2 _min left right

-- max(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _max :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

max :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
max left right = runBinaryenFn2 _max left right

-- pmin(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _pmin :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

pmin :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
pmin left right = runBinaryenFn2 _pmin left right

-- pmax(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _pmax :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

pmax :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
pmax left right = runBinaryenFn2 _pmax left right

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

-- convert_i32x4_s(value: ExpressionRef): ExpressionRef;
foreign import _convert_i32x4_s :: BinaryenFn1 ExpressionRef ExpressionRef

convert_i32x4_s :: ExpressionRef -> Binaryen ExpressionRef
convert_i32x4_s value = runBinaryenFn1 _convert_i32x4_s value

-- convert_i32x4_u(value: ExpressionRef): ExpressionRef;
foreign import _convert_i32x4_u :: BinaryenFn1 ExpressionRef ExpressionRef

convert_i32x4_u :: ExpressionRef -> Binaryen ExpressionRef
convert_i32x4_u value = runBinaryenFn1 _convert_i32x4_u value

-- demote_f64x2_zero(value: ExpressionRef): ExpressionRef;
foreign import _demote_f64x2_zero :: BinaryenFn1 ExpressionRef ExpressionRef

demote_f64x2_zero :: ExpressionRef -> Binaryen ExpressionRef
demote_f64x2_zero value = runBinaryenFn1 _demote_f64x2_zero value
