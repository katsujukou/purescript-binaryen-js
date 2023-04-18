module Binaryen.Monad where

import Prelude

import Data.Bifunctor (rmap)
import Data.Tuple (fst, snd)
import Data.Tuple.Nested (type (/\), (/\))
import Effect (Effect)
import Effect.Class (class MonadEffect)

data Module

newtype Binaryen a = Binaryen (Module -> Effect (Module /\ a))

instance Functor Binaryen where
  map f (Binaryen a) = Binaryen $ \m -> map (rmap f) (a m)

instance Apply Binaryen where
  apply (Binaryen mf) (Binaryen ma) = Binaryen $ \m -> do
    m' /\ f <- mf m
    m'' /\ a <- ma m'
    pure (m'' /\ f a)

instance Applicative Binaryen where
  pure a = Binaryen $ \m -> pure (m /\ a)

instance Bind Binaryen where
  bind (Binaryen ma) f = Binaryen $ \m -> do
    m' /\ a <- ma m
    case f a of
      Binaryen mb -> mb m'

instance Monad Binaryen

instance MonadEffect Binaryen where
  liftEffect ea = Binaryen $ \m -> map (m /\ _) ea

mkBinaryen :: forall a. (Module -> Effect (Module /\ a)) -> Binaryen a
mkBinaryen = Binaryen

runBinaryen :: forall a. Binaryen a -> Effect a
runBinaryen (Binaryen m) = snd <$> m _createModule

execBinaryen :: forall a. Binaryen a -> Effect Module
execBinaryen (Binaryen m) = fst <$> m _createModule

foreign import _createModule :: Module

