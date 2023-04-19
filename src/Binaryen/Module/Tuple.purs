module Binaryen.Module.Tuple
  ( extract
  ) where

import Binaryen.Module (ExportRef, ExpressionRef)
import Binaryen.Monad (Binaryen)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toNullable)
import Binaryen.Utils (BinaryenFn1, BinaryenFn2, runBinaryenFn1, runBinaryenFn2)

-- make(elements: ExportRef[]): ExpressionRef;
foreign import _make :: BinaryenFn1 (Array ExportRef) ExpressionRef

make :: Array ExportRef -> Binaryen ExpressionRef
make elements = runBinaryenFn1 _make elements

-- extract(tuple: ExpressionRef, index: number): ExpressionRef;
foreign import _extract :: BinaryenFn2 ExpressionRef Number ExpressionRef

extract :: ExpressionRef -> Number -> Binaryen ExpressionRef
extract tuple index = runBinaryenFn2 _extract tuple index
