module Binaryen.Module.Atomic
  ( fence
  ) where

import Binaryen.Module (ExpressionRef)
import Binaryen.Monad (Binaryen)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toNullable)
import Binaryen.Utils (BinaryenFn0, runBinaryenFn0)

-- fence(): ExpressionRef;
foreign import _fence :: BinaryenFn0  ExpressionRef

fence :: Binaryen ExpressionRef
fence  = runBinaryenFn0 _fence 
