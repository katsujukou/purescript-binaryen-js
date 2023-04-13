module Binaryen.Module where

import Prelude

import Binaryen.Expression (ExpressionRef)
import Binaryen.Function (FunctionRef)
import Binaryen.Monad (Binaryen, Module, mkBinaryen)
import Binaryen.Types (Type_)
import Data.Tuple (Tuple)
import Data.Tuple.Nested (type (/\), (/\))
import Effect.Uncurried (EffectFn2, EffectFn7, runEffectFn2, runEffectFn7)

emitText :: Binaryen String
emitText = mkBinaryen $ runEffectFn2 emitText_ (/\)

foreign import emitText_ :: EffectFn2 (forall a b. a -> b -> Tuple a b) Module (Module /\ String)

addFunction :: String -> Type_ -> Type_ -> (Array Type_) -> Binaryen ExpressionRef -> Binaryen FunctionRef
addFunction name params results vars mbody = mbody >>= \body -> mkBinaryen $ runEffectFn7 _addFunction (/\) name params results vars body

foreign import _addFunction :: EffectFn7 (forall a b. a -> b -> Tuple a b) String Type_ Type_ (Array Type_) ExpressionRef Module (Module /\ FunctionRef)
