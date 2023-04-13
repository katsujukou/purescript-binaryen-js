module Test.Binaryen.ExpressionSpec where

import Prelude

import Binaryen (addFunction, emitText, local_get)
import Binaryen.Expression (block, i32_add, local_set, return)
import Binaryen.Monad (evalBinaryen)
import Binaryen.Types (createType, i32)
import Data.Maybe (Maybe(..))
import Effect.Class (liftEffect)
import Test.Binaryen.Utils (shouldEmit)
import Test.Spec (Spec, describe, it)

spec :: Spec Unit
spec = describe "Binaryen.Expression" do
  it "should construct add expression" do
    wm <- liftEffect $ evalBinaryen do
      _ <- addFunction "add" (createType [ i32, i32 ]) i32 [ i32 ] $
        block Nothing
          [ do
              res <- join $ i32_add <$> (local_get 0 i32) <*> (local_get 1 i32)
              local_set 2 res
          , do
              return $ local_get 2 i32
          ]
      emitText

    wm `shouldEmit`
      """
(module
  (func $add (param i32 i32) (result i32) (local i32)
    (local.set 2
      (i32.add (local.get 0) (local.get 1)))
    (return (local.get 2))
  )
)
"""