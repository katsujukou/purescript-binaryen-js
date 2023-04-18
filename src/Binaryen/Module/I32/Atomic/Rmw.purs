module Binaryen.Module.I32.Atomic.Rmw
  ( add
  , sub
  , and
  , or
  , xor
  , xchg
  , cmpxchg
  ) where

import Binaryen (ExpressionRef)
import Binaryen.Monad (Binaryen)
import Binaryen.Utils (BinaryenFn4, runBinaryenFn4, BinaryenFn5, runBinaryenFn5)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toNullable)

-- add(offset: number, ptr: ExpressionRef, value: ExpressionRef, name?: string): ExpressionRef;
foreign import _add :: BinaryenFn4 Number ExpressionRef ExpressionRef (Nullable String) ExpressionRef

add :: Number -> ExpressionRef -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
add offset ptr value name = runBinaryenFn4 _add offset ptr value (toNullable name)

-- sub(offset: number, ptr: ExpressionRef, value: ExpressionRef, name?: string): ExpressionRef;
foreign import _sub :: BinaryenFn4 Number ExpressionRef ExpressionRef (Nullable String) ExpressionRef

sub :: Number -> ExpressionRef -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
sub offset ptr value name = runBinaryenFn4 _sub offset ptr value (toNullable name)

-- and(offset: number, ptr: ExpressionRef, value: ExpressionRef, name?: string): ExpressionRef;
foreign import _and :: BinaryenFn4 Number ExpressionRef ExpressionRef (Nullable String) ExpressionRef

and :: Number -> ExpressionRef -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
and offset ptr value name = runBinaryenFn4 _and offset ptr value (toNullable name)

-- or(offset: number, ptr: ExpressionRef, value: ExpressionRef, name?: string): ExpressionRef;
foreign import _or :: BinaryenFn4 Number ExpressionRef ExpressionRef (Nullable String) ExpressionRef

or :: Number -> ExpressionRef -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
or offset ptr value name = runBinaryenFn4 _or offset ptr value (toNullable name)

-- xor(offset: number, ptr: ExpressionRef, value: ExpressionRef, name?: string): ExpressionRef;
foreign import _xor :: BinaryenFn4 Number ExpressionRef ExpressionRef (Nullable String) ExpressionRef

xor :: Number -> ExpressionRef -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
xor offset ptr value name = runBinaryenFn4 _xor offset ptr value (toNullable name)

-- xchg(offset: number, ptr: ExpressionRef, value: ExpressionRef, name?: string): ExpressionRef;
foreign import _xchg :: BinaryenFn4 Number ExpressionRef ExpressionRef (Nullable String) ExpressionRef

xchg :: Number -> ExpressionRef -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
xchg offset ptr value name = runBinaryenFn4 _xchg offset ptr value (toNullable name)

-- cmpxchg(offset: number, ptr: ExpressionRef, expected: ExpressionRef, replacement: ExpressionRef, name?: string): ExpressionRef;
foreign import _cmpxchg :: BinaryenFn5 Number ExpressionRef ExpressionRef ExpressionRef (Nullable String) ExpressionRef

cmpxchg :: Number -> ExpressionRef -> ExpressionRef -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
cmpxchg offset ptr expected replacement name = runBinaryenFn5 _cmpxchg offset ptr expected replacement (toNullable name)
