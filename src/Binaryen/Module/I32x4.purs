module Binaryen.Module.I32x4
  ( splat
  , extract_lane
  , replace_lane
  , eq
  , ne
  , lt_s
  , lt_u
  , gt_s
  , gt_u
  , le_s
  , le_u
  , ge_s
  , ge_u
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
  , min_s
  , min_u
  , max_s
  , max_u
  , dot_i16x8_s
  , extmul_low_i16x8_s
  , extmul_high_i16x8_s
  , extmul_low_i16x8_u
  , extmul_high_i16x8_u
  , extadd_pairwise_i16x8_s
  , extadd_pairwise_i16x8_u
  , trunc_sat_f32x4_s
  , trunc_sat_f32x4_u
  , extend_low_i16x8_s
  , extend_high_i16x8_s
  , extend_low_i16x8_u
  , extend_high_i16x8_u
  , trunc_sat_f64x2_s_zero
  , trunc_sat_f64x2_u_zero
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

-- lt_s(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _lt_s :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

lt_s :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
lt_s left right = runBinaryenFn2 _lt_s left right

-- lt_u(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _lt_u :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

lt_u :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
lt_u left right = runBinaryenFn2 _lt_u left right

-- gt_s(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _gt_s :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

gt_s :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
gt_s left right = runBinaryenFn2 _gt_s left right

-- gt_u(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _gt_u :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

gt_u :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
gt_u left right = runBinaryenFn2 _gt_u left right

-- le_s(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _le_s :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

le_s :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
le_s left right = runBinaryenFn2 _le_s left right

-- le_u(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _le_u :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

le_u :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
le_u left right = runBinaryenFn2 _le_u left right

-- ge_s(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _ge_s :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

ge_s :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
ge_s left right = runBinaryenFn2 _ge_s left right

-- ge_u(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _ge_u :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

ge_u :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
ge_u left right = runBinaryenFn2 _ge_u left right

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

-- min_s(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _min_s :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

min_s :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
min_s left right = runBinaryenFn2 _min_s left right

-- min_u(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _min_u :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

min_u :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
min_u left right = runBinaryenFn2 _min_u left right

-- max_s(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _max_s :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

max_s :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
max_s left right = runBinaryenFn2 _max_s left right

-- max_u(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _max_u :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

max_u :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
max_u left right = runBinaryenFn2 _max_u left right

-- dot_i16x8_s(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _dot_i16x8_s :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

dot_i16x8_s :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
dot_i16x8_s left right = runBinaryenFn2 _dot_i16x8_s left right

-- extmul_low_i16x8_s(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _extmul_low_i16x8_s :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

extmul_low_i16x8_s :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
extmul_low_i16x8_s left right = runBinaryenFn2 _extmul_low_i16x8_s left right

-- extmul_high_i16x8_s(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _extmul_high_i16x8_s :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

extmul_high_i16x8_s :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
extmul_high_i16x8_s left right = runBinaryenFn2 _extmul_high_i16x8_s left right

-- extmul_low_i16x8_u(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _extmul_low_i16x8_u :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

extmul_low_i16x8_u :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
extmul_low_i16x8_u left right = runBinaryenFn2 _extmul_low_i16x8_u left right

-- extmul_high_i16x8_u(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _extmul_high_i16x8_u :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

extmul_high_i16x8_u :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
extmul_high_i16x8_u left right = runBinaryenFn2 _extmul_high_i16x8_u left right

-- extadd_pairwise_i16x8_s(value: ExpressionRef): ExpressionRef;
foreign import _extadd_pairwise_i16x8_s :: BinaryenFn1 ExpressionRef ExpressionRef

extadd_pairwise_i16x8_s :: ExpressionRef -> Binaryen ExpressionRef
extadd_pairwise_i16x8_s value = runBinaryenFn1 _extadd_pairwise_i16x8_s value

-- extadd_pairwise_i16x8_u(value: ExpressionRef): ExpressionRef;
foreign import _extadd_pairwise_i16x8_u :: BinaryenFn1 ExpressionRef ExpressionRef

extadd_pairwise_i16x8_u :: ExpressionRef -> Binaryen ExpressionRef
extadd_pairwise_i16x8_u value = runBinaryenFn1 _extadd_pairwise_i16x8_u value

-- trunc_sat_f32x4_s(value: ExpressionRef): ExpressionRef;
foreign import _trunc_sat_f32x4_s :: BinaryenFn1 ExpressionRef ExpressionRef

trunc_sat_f32x4_s :: ExpressionRef -> Binaryen ExpressionRef
trunc_sat_f32x4_s value = runBinaryenFn1 _trunc_sat_f32x4_s value

-- trunc_sat_f32x4_u(value: ExpressionRef): ExpressionRef;
foreign import _trunc_sat_f32x4_u :: BinaryenFn1 ExpressionRef ExpressionRef

trunc_sat_f32x4_u :: ExpressionRef -> Binaryen ExpressionRef
trunc_sat_f32x4_u value = runBinaryenFn1 _trunc_sat_f32x4_u value

-- extend_low_i16x8_s(value: ExpressionRef): ExpressionRef;
foreign import _extend_low_i16x8_s :: BinaryenFn1 ExpressionRef ExpressionRef

extend_low_i16x8_s :: ExpressionRef -> Binaryen ExpressionRef
extend_low_i16x8_s value = runBinaryenFn1 _extend_low_i16x8_s value

-- extend_high_i16x8_s(value: ExpressionRef): ExpressionRef;
foreign import _extend_high_i16x8_s :: BinaryenFn1 ExpressionRef ExpressionRef

extend_high_i16x8_s :: ExpressionRef -> Binaryen ExpressionRef
extend_high_i16x8_s value = runBinaryenFn1 _extend_high_i16x8_s value

-- extend_low_i16x8_u(value: ExpressionRef): ExpressionRef;
foreign import _extend_low_i16x8_u :: BinaryenFn1 ExpressionRef ExpressionRef

extend_low_i16x8_u :: ExpressionRef -> Binaryen ExpressionRef
extend_low_i16x8_u value = runBinaryenFn1 _extend_low_i16x8_u value

-- extend_high_i16x8_u(value: ExpressionRef): ExpressionRef;
foreign import _extend_high_i16x8_u :: BinaryenFn1 ExpressionRef ExpressionRef

extend_high_i16x8_u :: ExpressionRef -> Binaryen ExpressionRef
extend_high_i16x8_u value = runBinaryenFn1 _extend_high_i16x8_u value

-- trunc_sat_f64x2_s_zero(value: ExpressionRef): ExpressionRef;
foreign import _trunc_sat_f64x2_s_zero :: BinaryenFn1 ExpressionRef ExpressionRef

trunc_sat_f64x2_s_zero :: ExpressionRef -> Binaryen ExpressionRef
trunc_sat_f64x2_s_zero value = runBinaryenFn1 _trunc_sat_f64x2_s_zero value

-- trunc_sat_f64x2_u_zero(value: ExpressionRef): ExpressionRef;
foreign import _trunc_sat_f64x2_u_zero :: BinaryenFn1 ExpressionRef ExpressionRef

trunc_sat_f64x2_u_zero :: ExpressionRef -> Binaryen ExpressionRef
trunc_sat_f64x2_u_zero value = runBinaryenFn1 _trunc_sat_f64x2_u_zero value
