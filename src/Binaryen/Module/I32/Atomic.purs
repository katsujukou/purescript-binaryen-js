module Binaryen.Module.I32.Atomic
  ( load
  , load8_u
  , load16_u
  , load32_u
  , store
  , store8
  , store16
  , store32
  ) where

import Binaryen (ExpressionRef)
import Binaryen.Monad (Binaryen)
import Binaryen.Utils (BinaryenFn3, runBinaryenFn3, BinaryenFn4, runBinaryenFn4)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toNullable)

-- load(offset: number, ptr: ExpressionRef, name?: string): ExpressionRef;
foreign import _load :: BinaryenFn3 Number ExpressionRef (Nullable String) ExpressionRef

load :: Number -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
load offset ptr name = runBinaryenFn3 _load offset ptr (toNullable name)

-- load8_u(offset: number, ptr: ExpressionRef, name?: string): ExpressionRef;
foreign import _load8_u :: BinaryenFn3 Number ExpressionRef (Nullable String) ExpressionRef

load8_u :: Number -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
load8_u offset ptr name = runBinaryenFn3 _load8_u offset ptr (toNullable name)

-- load16_u(offset: number, ptr: ExpressionRef, name?: string): ExpressionRef;
foreign import _load16_u :: BinaryenFn3 Number ExpressionRef (Nullable String) ExpressionRef

load16_u :: Number -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
load16_u offset ptr name = runBinaryenFn3 _load16_u offset ptr (toNullable name)

-- load32_u(offset: number, ptr: ExpressionRef, name?: string): ExpressionRef;
foreign import _load32_u :: BinaryenFn3 Number ExpressionRef (Nullable String) ExpressionRef

load32_u :: Number -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
load32_u offset ptr name = runBinaryenFn3 _load32_u offset ptr (toNullable name)

-- store(offset: number, ptr: ExpressionRef, value: ExpressionRef, name?: string): ExpressionRef;
foreign import _store :: BinaryenFn4 Number ExpressionRef ExpressionRef (Nullable String) ExpressionRef

store :: Number -> ExpressionRef -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
store offset ptr value name = runBinaryenFn4 _store offset ptr value (toNullable name)

-- store8(offset: number, ptr: ExpressionRef, value: ExpressionRef, name?: string): ExpressionRef;
foreign import _store8 :: BinaryenFn4 Number ExpressionRef ExpressionRef (Nullable String) ExpressionRef

store8 :: Number -> ExpressionRef -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
store8 offset ptr value name = runBinaryenFn4 _store8 offset ptr value (toNullable name)

-- store16(offset: number, ptr: ExpressionRef, value: ExpressionRef, name?: string): ExpressionRef;
foreign import _store16 :: BinaryenFn4 Number ExpressionRef ExpressionRef (Nullable String) ExpressionRef

store16 :: Number -> ExpressionRef -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
store16 offset ptr value name = runBinaryenFn4 _store16 offset ptr value (toNullable name)

-- store32(offset: number, ptr: ExpressionRef, value: ExpressionRef, name?: string): ExpressionRef;
foreign import _store32 :: BinaryenFn4 Number ExpressionRef ExpressionRef (Nullable String) ExpressionRef

store32 :: Number -> ExpressionRef -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
store32 offset ptr value name = runBinaryenFn4 _store32 offset ptr value (toNullable name)
