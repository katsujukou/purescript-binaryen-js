module Binaryen.Module.I64x2
  ( splat
  , extract_lane
  , replace_lane
  , eq
  , ne
  , lt_s
  , gt_s
  , le_s
  , ge_s
  , abs
  , neg
  , all_true
  , bitmask
  , shl
  , shr_s
  , shr_u
  , add
  , sub
  , mul
  , extmul_low_i32x4_s
  , extmul_high_i32x4_s
  , extmul_low_i32x4_u
  , extmul_high_i32x4_u
  , extend_low_i32x4_s
  , extend_high_i32x4_s
  , extend_low_i32x4_u
  , extend_high_i32x4_u
  ) where

import Binaryen.Module (ExpressionRef)
import Binaryen.Monad (Binaryen)
import Binaryen.Utils (BinaryenFn1, runBinaryenFn1, BinaryenFn2, runBinaryenFn2, BinaryenFn3, runBinaryenFn3)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toNullable)

-- i64x2
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

-- lt_s(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _lt_s :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

lt_s :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
lt_s left right = runBinaryenFn2 _lt_s left right

-- gt_s(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _gt_s :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

gt_s :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
gt_s left right = runBinaryenFn2 _gt_s left right

-- le_s(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _le_s :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

le_s :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
le_s left right = runBinaryenFn2 _le_s left right

-- ge_s(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _ge_s :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

ge_s :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
ge_s left right = runBinaryenFn2 _ge_s left right

-- abs(value: ExpressionRef): ExpressionRef;
foreign import _abs :: BinaryenFn1 ExpressionRef ExpressionRef

abs :: ExpressionRef -> Binaryen ExpressionRef
abs value = runBinaryenFn1 _abs value

-- neg(value: ExpressionRef): ExpressionRef;
foreign import _neg :: BinaryenFn1 ExpressionRef ExpressionRef

neg :: ExpressionRef -> Binaryen ExpressionRef
neg value = runBinaryenFn1 _neg value

-- all_true(value: ExpressionRef): ExpressionRef;
foreign import _all_true :: BinaryenFn1 ExpressionRef ExpressionRef

all_true :: ExpressionRef -> Binaryen ExpressionRef
all_true value = runBinaryenFn1 _all_true value

-- bitmask(value: ExpressionRef): ExpressionRef;
foreign import _bitmask :: BinaryenFn1 ExpressionRef ExpressionRef

bitmask :: ExpressionRef -> Binaryen ExpressionRef
bitmask value = runBinaryenFn1 _bitmask value

-- shl(vec: ExpressionRef, shift: ExpressionRef): ExpressionRef;
foreign import _shl :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

shl :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
shl vec shift = runBinaryenFn2 _shl vec shift

-- shr_s(vec: ExpressionRef, shift: ExpressionRef): ExpressionRef;
foreign import _shr_s :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

shr_s :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
shr_s vec shift = runBinaryenFn2 _shr_s vec shift

-- shr_u(vec: ExpressionRef, shift: ExpressionRef): ExpressionRef;
foreign import _shr_u :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

shr_u :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
shr_u vec shift = runBinaryenFn2 _shr_u vec shift

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

-- extmul_low_i32x4_s(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _extmul_low_i32x4_s :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

extmul_low_i32x4_s :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
extmul_low_i32x4_s left right = runBinaryenFn2 _extmul_low_i32x4_s left right

-- extmul_high_i32x4_s(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _extmul_high_i32x4_s :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

extmul_high_i32x4_s :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
extmul_high_i32x4_s left right = runBinaryenFn2 _extmul_high_i32x4_s left right

-- extmul_low_i32x4_u(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _extmul_low_i32x4_u :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

extmul_low_i32x4_u :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
extmul_low_i32x4_u left right = runBinaryenFn2 _extmul_low_i32x4_u left right

-- extmul_high_i32x4_u(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _extmul_high_i32x4_u :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

extmul_high_i32x4_u :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
extmul_high_i32x4_u left right = runBinaryenFn2 _extmul_high_i32x4_u left right

-- extend_low_i32x4_s(value: ExpressionRef): ExpressionRef;
foreign import _extend_low_i32x4_s :: BinaryenFn1 ExpressionRef ExpressionRef

extend_low_i32x4_s :: ExpressionRef -> Binaryen ExpressionRef
extend_low_i32x4_s value = runBinaryenFn1 _extend_low_i32x4_s value

-- extend_high_i32x4_s(value: ExpressionRef): ExpressionRef;
foreign import _extend_high_i32x4_s :: BinaryenFn1 ExpressionRef ExpressionRef

extend_high_i32x4_s :: ExpressionRef -> Binaryen ExpressionRef
extend_high_i32x4_s value = runBinaryenFn1 _extend_high_i32x4_s value

-- extend_low_i32x4_u(value: ExpressionRef): ExpressionRef;
foreign import _extend_low_i32x4_u :: BinaryenFn1 ExpressionRef ExpressionRef

extend_low_i32x4_u :: ExpressionRef -> Binaryen ExpressionRef
extend_low_i32x4_u value = runBinaryenFn1 _extend_low_i32x4_u value

-- extend_high_i32x4_u(value: ExpressionRef): ExpressionRef;
foreign import _extend_high_i32x4_u :: BinaryenFn1 ExpressionRef ExpressionRef

extend_high_i32x4_u :: ExpressionRef -> Binaryen ExpressionRef
extend_high_i32x4_u value = runBinaryenFn1 _extend_high_i32x4_u value
