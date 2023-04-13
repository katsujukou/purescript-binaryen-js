module Test.Binaryen.Utils where

import Prelude

import Binaryen (Module)
import Control.Monad.Error.Class (class MonadThrow)
import Effect.Exception (Error)
import Test.Spec.Assertions (shouldEqual)

shouldEmit :: forall m. MonadThrow Error m => Module -> String -> m Unit
shouldEmit mod wat = _emitText mod `shouldEqual` formatWat wat

foreign import formatWat :: String -> String

foreign import _emitText :: Module -> String