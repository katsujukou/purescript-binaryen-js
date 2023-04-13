module Binaryen.Expression
  ( ExpressionRef
  , block
  , i32_add
  , local_get
  , local_set
  , return
  ) where

import Prelude hiding (add)

import Binaryen.Monad (Binaryen, Module, mkBinaryen)
import Binaryen.Types (Type_)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toNullable)
import Data.Traversable (sequence)
import Data.Tuple.Nested (type (/\), (/\))
import Effect.Uncurried (EffectFn3, EffectFn4, runEffectFn3, runEffectFn4)

data ExpressionRef

i32_add :: ExpressionRef -> ExpressionRef -> Binaryen ExpressionRef
i32_add lhs rhs = mkBinaryen $ runEffectFn4 _i32_add (/\) lhs rhs

foreign import _i32_add :: EffectFn4 (forall a b. a -> b -> a /\ b) ExpressionRef ExpressionRef Module (Module /\ ExpressionRef)

local_get :: Int -> Type_ -> Binaryen ExpressionRef
local_get idx ty = mkBinaryen $ runEffectFn4 _local_get (/\) idx ty

foreign import _local_get :: EffectFn4 (forall a b. a -> b -> a /\ b) Int Type_ Module (Module /\ ExpressionRef)

local_set :: Int -> ExpressionRef -> Binaryen ExpressionRef
local_set idx rhs = mkBinaryen $ runEffectFn4 _local_set (/\) idx rhs

foreign import _local_set :: EffectFn4 (forall a b. a -> b -> a /\ b) Int ExpressionRef Module (Module /\ ExpressionRef)

return :: Binaryen ExpressionRef -> Binaryen ExpressionRef
return me = me >>= \e -> mkBinaryen $ runEffectFn3 _return (/\) e

foreign import _return :: EffectFn3 (forall a b. a -> b -> a /\ b) ExpressionRef Module (Module /\ ExpressionRef)

block :: Maybe String -> Array (Binaryen ExpressionRef) -> Binaryen ExpressionRef
block label mbody = (sequence mbody) >>= \body -> mkBinaryen $ (runEffectFn4 _block (/\) (toNullable label)) body

foreign import _block :: EffectFn4 (forall a b. a -> b -> a /\ b) (Nullable String) (Array ExpressionRef) Module (Module /\ ExpressionRef)