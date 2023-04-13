{ pkgs ? import <nixpkgs> {} }:

let
  easy-ps = import (pkgs.fetchFromGitHub {
    owner = "justinwoo";
    repo = "easy-purescript-nix";
    rev = "0c10ff170461aed0c336f5c21ed0f430c2c3574b";
    sha256 = "0mq6ws2wk3i1jxy4dpsyy01qkwalaypfqfy2advam2ady8n9mfic";
  }) {
    inherit pkgs;
  };
in
  pkgs.mkShell {
    buildInputs = [
      pkgs.nodejs-18_x
      easy-ps.spago
      easy-ps.purs-0_15_8
      easy-ps.purs-tidy
      pkgs.wabt
    ];

    shellHooks = ''
      export PATH=$PWD/node_modules/.bin:$PATH
    '';
  }

