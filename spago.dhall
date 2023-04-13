{ name = "binaryen-js"
, dependencies =
  [ "bifunctors"
  , "console"
  , "debug"
  , "effect"
  , "foldable-traversable"
  , "functions"
  , "maybe"
  , "nullable"
  , "prelude"
  , "tuples"
  , "unsafe-coerce"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
