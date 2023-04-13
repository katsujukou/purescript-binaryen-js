module Test.Binaryen.ModuleSpec where

import Prelude

import Binaryen (evalBinaryen)
import Binaryen.Module (emitText)
import Effect.Class (liftEffect)
import Test.Binaryen.Utils (shouldEmit)
import Test.Spec (Spec, describe, it)

spec :: Spec Unit
spec = describe "Binaryen.Module" do
  it "should emit empty module" do
    m <- liftEffect $ evalBinaryen do
      emitText
    m `shouldEmit` "(module)"
