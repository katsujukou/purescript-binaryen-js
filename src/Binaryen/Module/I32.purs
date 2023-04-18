module Binaryen.Module.I32
  ( load
  , load8_s
  , load8_u
  , load16_s
  , load16_u
  , store
  , store8
  , store16
  , const
  , clz
  , ctz
  , popcnt
  , eqz
  , reinterpret
  , extend8_s
  , extend16_s
  , wrap
  , add
  , sub
  , mul
  , div_s
  , div_u
  , rem_s
  , rem_u
  , and
  , or
  , xor
  , shl
  , shr_u
  , shr_s
  , rotl
  , rotr
  , eq
  , ne
  , lt_s
  , lt_u
  , le_s
  , le_u
  , gt_s
  , gt_u
  , ge_s
  , ge_u
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

-- load8_s(offset: number, align: number, ptr: ExpressionRef, name?: string): ExpressionRef;
foreign import _load8_s :: BinaryenFn4 Number Number ExpressionRef (Nullable String) ExpressionRef

load8_s :: Number -> Number -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
load8_s offset align ptr name = runBinaryenFn4 _load8_s offset align ptr (toNullable name)

-- load8_u(offset: number, align: number, ptr: ExpressionRef, name?: string): ExpressionRef;
foreign import _load8_u :: BinaryenFn4 Number Number ExpressionRef (Nullable String) ExpressionRef

load8_u :: Number -> Number -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
load8_u offset align ptr name = runBinaryenFn4 _load8_u offset align ptr (toNullable name)

-- load16_s(offset: number, align: number, ptr: ExpressionRef, name?: string): ExpressionRef;
foreign import _load16_s :: BinaryenFn4 Number Number ExpressionRef (Nullable String) ExpressionRef

load16_s :: Number -> Number -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
load16_s offset align ptr name = runBinaryenFn4 _load16_s offset align ptr (toNullable name)

-- load16_u(offset: number, align: number, ptr: ExpressionRef, name?: string): ExpressionRef;
foreign import _load16_u :: BinaryenFn4 Number Number ExpressionRef (Nullable String) ExpressionRef

load16_u :: Number -> Number -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
load16_u offset align ptr name = runBinaryenFn4 _load16_u offset align ptr (toNullable name)

-- store(offset: number, align: number, ptr: ExpressionRef, value: ExpressionRef, name?: string): ExpressionRef;
foreign import _store :: BinaryenFn5 Number Number ExpressionRef ExpressionRef (Nullable String) ExpressionRef

store :: Number -> Number -> ExpressionRef -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
store offset align ptr value name = runBinaryenFn5 _store offset align ptr value (toNullable name)

-- store8(offset: number, align: number, ptr: ExpressionRef, value: ExpressionRef, name?: string): ExpressionRef;
foreign import _store8 :: BinaryenFn5 Number Number ExpressionRef ExpressionRef (Nullable String) ExpressionRef

store8 :: Number -> Number -> ExpressionRef -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
store8 offset align ptr value name = runBinaryenFn5 _store8 offset align ptr value (toNullable name)

-- store16(offset: number, align: number, ptr: ExpressionRef, value: ExpressionRef, name?: string): ExpressionRef;
foreign import _store16 :: BinaryenFn5 Number Number ExpressionRef ExpressionRef (Nullable String) ExpressionRef

store16 :: Number -> Number -> ExpressionRef -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
store16 offset align ptr value name = runBinaryenFn5 _store16 offset align ptr value (toNullable name)

-- const(value: number): ExpressionRef;
foreign import _const :: BinaryenFn1 Number ExpressionRef

const :: Number -> Binaryen ExpressionRef
const value = runBinaryenFn1 _const value

-- clz(value: ExpressionRef): ExpressionRef;
foreign import _clz :: BinaryenFn1 ExpressionRef ExpressionRef

clz :: ExpressionRef -> Binaryen ExpressionRef
clz value = runBinaryenFn1 _clz value

-- ctz(value: ExpressionRef): ExpressionRef;
foreign import _ctz :: BinaryenFn1 ExpressionRef ExpressionRef

ctz :: ExpressionRef -> Binaryen ExpressionRef
ctz value = runBinaryenFn1 _ctz value

-- popcnt(value: ExpressionRef): ExpressionRef;
foreign import _popcnt :: BinaryenFn1 ExpressionRef ExpressionRef

popcnt :: ExpressionRef -> Binaryen ExpressionRef
popcnt value = runBinaryenFn1 _popcnt value

-- eqz(value: ExpressionRef): ExpressionRef;
foreign import _eqz :: BinaryenFn1 ExpressionRef ExpressionRef

eqz :: ExpressionRef -> Binaryen ExpressionRef
eqz value = runBinaryenFn1 _eqz value

-- reinterpret(value: ExpressionRef): ExpressionRef;
foreign import _reinterpret :: BinaryenFn1 ExpressionRef ExpressionRef

reinterpret :: ExpressionRef -> Binaryen ExpressionRef
reinterpret value = runBinaryenFn1 _reinterpret value

-- extend8_s(value: ExpressionRef): ExpressionRef;
foreign import _extend8_s :: BinaryenFn1 ExpressionRef ExpressionRef

extend8_s :: ExpressionRef -> Binaryen ExpressionRef
extend8_s value = runBinaryenFn1 _extend8_s value

-- extend16_s(value: ExpressionRef): ExpressionRef;
foreign import _extend16_s :: BinaryenFn1 ExpressionRef ExpressionRef

extend16_s :: ExpressionRef -> Binaryen ExpressionRef
extend16_s value = runBinaryenFn1 _extend16_s value

-- wrap(value: ExpressionRef): ExpressionRef;
foreign import _wrap :: BinaryenFn1 ExpressionRef ExpressionRef

wrap :: ExpressionRef -> Binaryen ExpressionRef
wrap value = runBinaryenFn1 _wrap value

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

-- div_s(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _div_s :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

div_s :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
div_s left right = runBinaryenFn2 _div_s left right

-- div_u(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _div_u :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

div_u :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
div_u left right = runBinaryenFn2 _div_u left right

-- rem_s(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _rem_s :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

rem_s :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
rem_s left right = runBinaryenFn2 _rem_s left right

-- rem_u(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _rem_u :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

rem_u :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
rem_u left right = runBinaryenFn2 _rem_u left right

-- and(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _and :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

and :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
and left right = runBinaryenFn2 _and left right

-- or(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _or :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

or :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
or left right = runBinaryenFn2 _or left right

-- xor(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _xor :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

xor :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
xor left right = runBinaryenFn2 _xor left right

-- shl(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _shl :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

shl :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
shl left right = runBinaryenFn2 _shl left right

-- shr_u(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _shr_u :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

shr_u :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
shr_u left right = runBinaryenFn2 _shr_u left right

-- shr_s(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _shr_s :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

shr_s :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
shr_s left right = runBinaryenFn2 _shr_s left right

-- rotl(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _rotl :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

rotl :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
rotl left right = runBinaryenFn2 _rotl left right

-- rotr(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _rotr :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

rotr :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
rotr left right = runBinaryenFn2 _rotr left right

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

-- le_s(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _le_s :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

le_s :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
le_s left right = runBinaryenFn2 _le_s left right

-- le_u(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _le_u :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

le_u :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
le_u left right = runBinaryenFn2 _le_u left right

-- gt_s(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _gt_s :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

gt_s :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
gt_s left right = runBinaryenFn2 _gt_s left right

-- gt_u(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _gt_u :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

gt_u :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
gt_u left right = runBinaryenFn2 _gt_u left right

-- ge_s(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _ge_s :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

ge_s :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
ge_s left right = runBinaryenFn2 _ge_s left right

-- ge_u(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _ge_u :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

ge_u :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
ge_u left right = runBinaryenFn2 _ge_u left right

-- pop(): ExpressionRef;
foreign import _pop :: BinaryenFn0 ExpressionRef

pop :: Binaryen ExpressionRef
pop = runBinaryenFn0 _pop
