module Binaryen.Module.Data
  ( drop
  ) where

import Binaryen.Module (ExpressionRef)
import Binaryen.Monad (Binaryen)
import Binaryen.Utils (BinaryenFn1, runBinaryenFn1)

-- data.drop(segment: number): ExpressionRef;

foreign import _drop :: BinaryenFn1 Number ExpressionRef

drop :: Number -> Binaryen ExpressionRef
drop = runBinaryenFn1 _drop