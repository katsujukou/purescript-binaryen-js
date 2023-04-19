module Binaryen.Module.V128
  ( load
  , load8_splat
  , load16_splat
  , load32_splat
  , load64_splat
  , load8x8_s
  , load8x8_u
  , load16x4_s
  , load16x4_u
  , load32x2_s
  , load32x2_u
  , load32_zero
  , load64_zero
  , load8_lane
  , load16_lane
  , load32_lane
  , load64_lane
  , store8_lane
  , store16_lane
  , store32_lane
  , store64_lane
  , store
  , not
  , any_true
  , and
  , or
  , xor
  , andnot
  , bitselect
  , pop
  ) where

import Binaryen.Module (ExpressionRef)
import Binaryen.Monad (Binaryen)
import Binaryen.Utils (BinaryenFn0, BinaryenFn1, BinaryenFn2, BinaryenFn3, BinaryenFn4, BinaryenFn5, BinaryenFn6, runBinaryenFn0, runBinaryenFn1, runBinaryenFn2, runBinaryenFn3, runBinaryenFn4, runBinaryenFn5, runBinaryenFn6)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toNullable)

-- load(offset: number, align: number, ptr: ExpressionRef, name?: string): ExpressionRef;
foreign import _load :: BinaryenFn4 Number Number ExpressionRef (Nullable String) ExpressionRef

load :: Number -> Number -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
load offset align ptr name = runBinaryenFn4 _load offset align ptr (toNullable name)

-- load8_splat(offset: number, align: number, ptr: ExpressionRef, name?: string): ExpressionRef;
foreign import _load8_splat :: BinaryenFn4 Number Number ExpressionRef (Nullable String) ExpressionRef

load8_splat :: Number -> Number -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
load8_splat offset align ptr name = runBinaryenFn4 _load8_splat offset align ptr (toNullable name)

-- load16_splat(offset: number, align: number, ptr: ExpressionRef, name?: string): ExpressionRef;
foreign import _load16_splat :: BinaryenFn4 Number Number ExpressionRef (Nullable String) ExpressionRef

load16_splat :: Number -> Number -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
load16_splat offset align ptr name = runBinaryenFn4 _load16_splat offset align ptr (toNullable name)

-- load32_splat(offset: number, align: number, ptr: ExpressionRef, name?: string): ExpressionRef;
foreign import _load32_splat :: BinaryenFn4 Number Number ExpressionRef (Nullable String) ExpressionRef

load32_splat :: Number -> Number -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
load32_splat offset align ptr name = runBinaryenFn4 _load32_splat offset align ptr (toNullable name)

-- load64_splat(offset: number, align: number, ptr: ExpressionRef, name?: string): ExpressionRef;
foreign import _load64_splat :: BinaryenFn4 Number Number ExpressionRef (Nullable String) ExpressionRef

load64_splat :: Number -> Number -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
load64_splat offset align ptr name = runBinaryenFn4 _load64_splat offset align ptr (toNullable name)

-- load8x8_s(offset: number, align: number, ptr: ExpressionRef, name?: string): ExpressionRef;
foreign import _load8x8_s :: BinaryenFn4 Number Number ExpressionRef (Nullable String) ExpressionRef

load8x8_s :: Number -> Number -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
load8x8_s offset align ptr name = runBinaryenFn4 _load8x8_s offset align ptr (toNullable name)

-- load8x8_u(offset: number, align: number, ptr: ExpressionRef, name?: string): ExpressionRef;
foreign import _load8x8_u :: BinaryenFn4 Number Number ExpressionRef (Nullable String) ExpressionRef

load8x8_u :: Number -> Number -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
load8x8_u offset align ptr name = runBinaryenFn4 _load8x8_u offset align ptr (toNullable name)

-- load16x4_s(offset: number, align: number, ptr: ExpressionRef, name?: string): ExpressionRef;
foreign import _load16x4_s :: BinaryenFn4 Number Number ExpressionRef (Nullable String) ExpressionRef

load16x4_s :: Number -> Number -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
load16x4_s offset align ptr name = runBinaryenFn4 _load16x4_s offset align ptr (toNullable name)

-- load16x4_u(offset: number, align: number, ptr: ExpressionRef, name?: string): ExpressionRef;
foreign import _load16x4_u :: BinaryenFn4 Number Number ExpressionRef (Nullable String) ExpressionRef

load16x4_u :: Number -> Number -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
load16x4_u offset align ptr name = runBinaryenFn4 _load16x4_u offset align ptr (toNullable name)

-- load32x2_s(offset: number, align: number, ptr: ExpressionRef, name?: string): ExpressionRef;
foreign import _load32x2_s :: BinaryenFn4 Number Number ExpressionRef (Nullable String) ExpressionRef

load32x2_s :: Number -> Number -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
load32x2_s offset align ptr name = runBinaryenFn4 _load32x2_s offset align ptr (toNullable name)

-- load32x2_u(offset: number, align: number, ptr: ExpressionRef, name?: string): ExpressionRef;
foreign import _load32x2_u :: BinaryenFn4 Number Number ExpressionRef (Nullable String) ExpressionRef

load32x2_u :: Number -> Number -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
load32x2_u offset align ptr name = runBinaryenFn4 _load32x2_u offset align ptr (toNullable name)

-- load32_zero(offset: number, align: number, ptr: ExpressionRef, name?: string): ExpressionRef;
foreign import _load32_zero :: BinaryenFn4 Number Number ExpressionRef (Nullable String) ExpressionRef

load32_zero :: Number -> Number -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
load32_zero offset align ptr name = runBinaryenFn4 _load32_zero offset align ptr (toNullable name)

-- load64_zero(offset: number, align: number, ptr: ExpressionRef, name?: string): ExpressionRef;
foreign import _load64_zero :: BinaryenFn4 Number Number ExpressionRef (Nullable String) ExpressionRef

load64_zero :: Number -> Number -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
load64_zero offset align ptr name = runBinaryenFn4 _load64_zero offset align ptr (toNullable name)

-- load8_lane(offset: number, align: number, index: number, ptr: ExpressionRef, vec: ExpressionRef, name?: string): ExpressionRef;
foreign import _load8_lane :: BinaryenFn6 Number Number Number ExpressionRef ExpressionRef (Nullable String) ExpressionRef

load8_lane :: Number -> Number -> Number -> ExpressionRef -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
load8_lane offset align index ptr vec name = runBinaryenFn6 _load8_lane offset align index ptr vec (toNullable name)

-- load16_lane(offset: number, align: number, index: number, ptr: ExpressionRef, vec: ExpressionRef, name?: string): ExpressionRef;
foreign import _load16_lane :: BinaryenFn6 Number Number Number ExpressionRef ExpressionRef (Nullable String) ExpressionRef

load16_lane :: Number -> Number -> Number -> ExpressionRef -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
load16_lane offset align index ptr vec name = runBinaryenFn6 _load16_lane offset align index ptr vec (toNullable name)

-- load32_lane(offset: number, align: number, index: number, ptr: ExpressionRef, vec: ExpressionRef, name?: string): ExpressionRef;
foreign import _load32_lane :: BinaryenFn6 Number Number Number ExpressionRef ExpressionRef (Nullable String) ExpressionRef

load32_lane :: Number -> Number -> Number -> ExpressionRef -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
load32_lane offset align index ptr vec name = runBinaryenFn6 _load32_lane offset align index ptr vec (toNullable name)

-- load64_lane(offset: number, align: number, index: number, ptr: ExpressionRef, vec: ExpressionRef, name?: string): ExpressionRef;
foreign import _load64_lane :: BinaryenFn6 Number Number Number ExpressionRef ExpressionRef (Nullable String) ExpressionRef

load64_lane :: Number -> Number -> Number -> ExpressionRef -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
load64_lane offset align index ptr vec name = runBinaryenFn6 _load64_lane offset align index ptr vec (toNullable name)

-- store8_lane(offset: number, align: number, index: number, pt: ExpressionRef, vec: ExpressionRef, name?: string): ExpressionRef;
foreign import _store8_lane :: BinaryenFn6 Number Number Number ExpressionRef ExpressionRef (Nullable String) ExpressionRef

store8_lane :: Number -> Number -> Number -> ExpressionRef -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
store8_lane offset align index pt vec name = runBinaryenFn6 _store8_lane offset align index pt vec (toNullable name)

-- store16_lane(offset: number, align: number, index: number, pt: ExpressionRef, vec: ExpressionRef, name?: string): ExpressionRef;
foreign import _store16_lane :: BinaryenFn6 Number Number Number ExpressionRef ExpressionRef (Nullable String) ExpressionRef

store16_lane :: Number -> Number -> Number -> ExpressionRef -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
store16_lane offset align index pt vec name = runBinaryenFn6 _store16_lane offset align index pt vec (toNullable name)

-- store32_lane(offset: number, align: number, index: number, pt: ExpressionRef, vec: ExpressionRef, name?: string): ExpressionRef;
foreign import _store32_lane :: BinaryenFn6 Number Number Number ExpressionRef ExpressionRef (Nullable String) ExpressionRef

store32_lane :: Number -> Number -> Number -> ExpressionRef -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
store32_lane offset align index pt vec name = runBinaryenFn6 _store32_lane offset align index pt vec (toNullable name)

-- store64_lane(offset: number, align: number, index: number, pt: ExpressionRef, vec: ExpressionRef, name?: string): ExpressionRef;
foreign import _store64_lane :: BinaryenFn6 Number Number Number ExpressionRef ExpressionRef (Nullable String) ExpressionRef

store64_lane :: Number -> Number -> Number -> ExpressionRef -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
store64_lane offset align index pt vec name = runBinaryenFn6 _store64_lane offset align index pt vec (toNullable name)

-- store(offset: number, align: number, ptr: ExpressionRef, value: ExpressionRef, name?: string): ExpressionRef;
foreign import _store :: BinaryenFn5 Number Number ExpressionRef ExpressionRef (Nullable String) ExpressionRef

store :: Number -> Number -> ExpressionRef -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
store offset align ptr value name = runBinaryenFn5 _store offset align ptr value (toNullable name)

-- const(value: ArrayLike<number>): ExpressionRef;
foreign import _const :: BinaryenFn1 (Array Number) ExpressionRef

const :: Array Number -> Binaryen ExpressionRef
const = runBinaryenFn1 _const

-- not(value: ExpressionRef): ExpressionRef;
foreign import _not :: BinaryenFn1 ExpressionRef ExpressionRef

not :: ExpressionRef -> Binaryen ExpressionRef
not value = runBinaryenFn1 _not value

-- any_true(value: ExpressionRef): ExpressionRef;
foreign import _any_true :: BinaryenFn1 ExpressionRef ExpressionRef

any_true :: ExpressionRef -> Binaryen ExpressionRef
any_true value = runBinaryenFn1 _any_true value

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

-- andnot(left: ExpressionRef, right: ExpressionRef): ExpressionRef;
foreign import _andnot :: BinaryenFn2 ExpressionRef ExpressionRef ExpressionRef

andnot :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
andnot left right = runBinaryenFn2 _andnot left right

-- bitselect(left: ExpressionRef, right: ExpressionRef, cond: ExpressionRef): ExpressionRef;
foreign import _bitselect :: BinaryenFn3 ExpressionRef ExpressionRef ExpressionRef ExpressionRef

bitselect :: ExpressionRef -> ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
bitselect left right cond = runBinaryenFn3 _bitselect left right cond

-- pop(): ExpressionRef;
foreign import _pop :: BinaryenFn0 ExpressionRef

pop :: Binaryen ExpressionRef
pop = runBinaryenFn0 _pop
