#!/usr/bin/env nix-shell
{
  pkgs ? import <nixpkgs> {}
}:
  with pkgs;
  haskell.lib.buildStackProject {
    inherit ghc;
    name = "haskell-template";
    buildInputs = [ ];
    shellHook = ''
      echo 'Entering Environment'
      alias stack='\stack --nix'
    '';
  }
