module Binaryen.Types where

data Type_

foreign import i32 :: Type_
foreign import i64 :: Type_
foreign import f32 :: Type_
foreign import f64 :: Type_

foreign import createType :: Array Type_ -> Type_