module Binaryen.Utils where

import Prelude

import Binaryen.Monad (Binaryen, Module, mkBinaryen)
import Data.Tuple.Nested (type (/\), (/\))
import Effect.Uncurried (EffectFn2, EffectFn3, EffectFn4, EffectFn5, EffectFn6, EffectFn7, runEffectFn2, runEffectFn3, runEffectFn4, runEffectFn5, runEffectFn6, runEffectFn7)

type BinaryenFn0 r = EffectFn2 (forall s t. s -> t -> s /\ t) Module (Module /\ r)

type BinaryenFn1 a r = EffectFn3 (forall s t. s -> t -> s /\ t) a Module (Module /\ r)

type BinaryenFn2 a b r = EffectFn4 (forall s t. s -> t -> s /\ t) a b Module (Module /\ r)

type BinaryenFn3 a b c r = EffectFn5 (forall s t. s -> t -> s /\ t) a b c Module (Module /\ r)

type BinaryenFn4 a b c d r = EffectFn6 (forall s t. s -> t -> s /\ t) a b c d Module (Module /\ r)

type BinaryenFn5 a b c d e r = EffectFn7 (forall s t. s -> t -> s /\ t) a b c d e Module (Module /\ r)

runBinaryenFn0 :: forall a r. BinaryenFn0 r -> Binaryen r
runBinaryenFn0 f = mkBinaryen $ \m -> runEffectFn2 f (/\) m

runBinaryenFn1 :: forall a r. BinaryenFn1 a r -> a -> Binaryen r
runBinaryenFn1 f a = mkBinaryen $ \m -> runEffectFn3 f (/\) a m

runBinaryenFn2 :: forall a b r. BinaryenFn2 a b r -> a -> b -> Binaryen r
runBinaryenFn2 f a b = mkBinaryen $ \m -> runEffectFn4 f (/\) a b m

runBinaryenFn3 :: forall a b c r. BinaryenFn3 a b c r -> a -> b -> c -> Binaryen r
runBinaryenFn3 f a b c = mkBinaryen $ \m -> runEffectFn5 f (/\) a b c m

runBinaryenFn4 :: forall a b c d r. BinaryenFn4 a b c d r -> a -> b -> c -> d -> Binaryen r
runBinaryenFn4 f a b c d = mkBinaryen $ \m -> runEffectFn6 f (/\) a b c d m

runBinaryenFn5 :: forall a b c d e r. BinaryenFn5 a b c d e r -> a -> b -> c -> d -> e -> Binaryen r
runBinaryenFn5 f a b c d e = mkBinaryen $ \m -> runEffectFn7 f (/\) a b c d e m
