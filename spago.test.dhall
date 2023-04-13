{ name = "binaryen-js-test"
, dependencies =
  [ "aff"
  , "bifunctors"
  , "console"
  , "effect"
  , "exceptions"
  , "foldable-traversable"
  , "maybe"
  , "nullable"
  , "prelude"
  , "spec"
  , "transformers"
  , "tuples"
  , "unsafe-coerce"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
