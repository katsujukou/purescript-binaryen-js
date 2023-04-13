module Test.BinaryenSpec where

import Prelude

import Test.Spec (Spec, describe, it)
import Test.Spec.Assertions (shouldEqual)

spec :: Spec Unit
spec = describe "Binaryen" do
  it "should pass" do
    42 `shouldEqual` (21 * 2)