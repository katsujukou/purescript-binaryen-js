module Binaryen.Module.Memory.Atomic
  ( notify
  , wait32
  , wait64
  ) where

import Binaryen.Module (ExpressionRef)
import Binaryen.Monad (Binaryen)
import Binaryen.Utils (BinaryenFn3, BinaryenFn4, runBinaryenFn3, runBinaryenFn4)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toNullable)

-- atomic.notify(ptr: ExpressionRef, notifyCount: ExpressionRef, name?: string): ExpressionRef;
foreign import _notify :: BinaryenFn3 ExpressionRef ExpressionRef (Nullable String) ExpressionRef

notify :: ExpressionRef -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
notify ptr notifyCount name = runBinaryenFn3 _notify ptr notifyCount (toNullable name)

-- atomic.wait32(ptr: ExpressionRef, expected: ExpressionRef, timeout: ExpressionRef, name?: string): ExpressionRef;
foreign import _wait32 :: BinaryenFn4 ExpressionRef ExpressionRef ExpressionRef (Nullable String) ExpressionRef

wait32 :: ExpressionRef -> ExpressionRef -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
wait32 ptr expected timeout name = runBinaryenFn4 _wait32 ptr expected timeout (toNullable name)

-- atomic.wait64(ptr: ExpressionRef, expected: ExpressionRef, timeout: ExpressionRef, name?: string): ExpressionRef;
foreign import _wait64 :: BinaryenFn4 ExpressionRef ExpressionRef ExpressionRef (Nullable String) ExpressionRef

wait64 :: ExpressionRef -> ExpressionRef -> ExpressionRef -> Maybe String -> Binaryen ExpressionRef
wait64 ptr expected timeout name = runBinaryenFn4 _wait64 ptr expected timeout (toNullable name)