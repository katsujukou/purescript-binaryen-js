module Binaryen.Module.Dataref where

import Binaryen.Module (ExpressionRef)
import Binaryen.Monad (Binaryen)
import Binaryen.Utils (BinaryenFn0, runBinaryenFn0)

-- pop(): ExpressionRef;
foreign import _pop :: BinaryenFn0 ExpressionRef

pop :: Binaryen ExpressionRef
pop = runBinaryenFn0 _pop
