module Binaryen.Type
  ( Type_
  , createType
  , f32
  , f64
  , i32
  , i64
  , none
  ) where

data Type_

foreign import none :: Type_
foreign import i32 :: Type_
foreign import i64 :: Type_
foreign import f32 :: Type_
foreign import f64 :: Type_

foreign import createType :: Array Type_ -> Type_