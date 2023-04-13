module Test.BinaryenSpec where

import Prelude

import Test.Binaryen.ExpressionSpec as Expression
import Test.Binaryen.ModuleSpec as Module
import Test.Spec (Spec, describe)

spec :: Spec Unit
spec = describe "Binaryen" do
  Module.spec
  Expression.spec