module Binaryen.Module.Memory
  ( copy
  , fill
  , grow
  , init
  , size
  ) where

import Binaryen.Module (ExpressionRef)
import Binaryen.Monad (Binaryen)
import Binaryen.Utils (BinaryenFn2, BinaryenFn3, BinaryenFn4, BinaryenFn5, runBinaryenFn2, runBinaryenFn3, runBinaryenFn4, runBinaryenFn5)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toNullable)

-- memory.size(name?: string, memory64?: boolean): ExpressionRef;
foreign import _size :: BinaryenFn2 (Nullable String) (Nullable Boolean) ExpressionRef

size :: Maybe String -> Maybe Boolean -> Binaryen ExpressionRef
size name memory64 = runBinaryenFn2 _size (toNullable name) (toNullable memory64)

-- memory.grow(value: ExpressionRef, name?: string, memory64?: boolean): ExpressionRef;
foreign import _grow :: BinaryenFn3 ExpressionRef (Nullable String) (Nullable Boolean) ExpressionRef

grow :: ExpressionRef -> Maybe String -> Maybe Boolean -> Binaryen ExpressionRef
grow value name memory64 = runBinaryenFn3 _grow value (toNullable name) (toNullable memory64)

-- memory.init(segment: number, dest: ExpressionRef, offset: ExpressionRef, size: ExpressionRef, name?: string): ExpressionRef;
foreign import _init :: BinaryenFn5 Number ExpressionRef ExpressionRef ExpressionRef (Nullable String) ExpressionRef

init :: Number -> ExpressionRef -> ExpressionRef -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
init segment dest offset size' name = runBinaryenFn5 _init segment dest offset size' (toNullable name)

-- memory.copy(dest: ExpressionRef, source: ExpressionRef, size: ExpressionRef, destName?: string, sourceName?: string): ExpressionRef;
foreign import _copy :: BinaryenFn5 ExpressionRef ExpressionRef ExpressionRef (Nullable String) (Nullable String) ExpressionRef

copy :: ExpressionRef -> ExpressionRef -> ExpressionRef -> Maybe String -> Maybe String -> Binaryen ExpressionRef
copy dest source size' destName sourceName = runBinaryenFn5 _copy dest source size' (toNullable destName) (toNullable sourceName)

-- memory.fill(dest: ExpressionRef, value: ExpressionRef, size: ExpressionRef, name?: string): ExpressionRef;
foreign import _fill :: BinaryenFn4 ExpressionRef ExpressionRef ExpressionRef (Nullable String) ExpressionRef

fill :: ExpressionRef -> ExpressionRef -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
fill dest value size' name = runBinaryenFn4 _fill dest value size' (toNullable name)
