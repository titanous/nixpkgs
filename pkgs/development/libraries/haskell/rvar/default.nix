# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, MonadPrompt, mtl, randomSource, transformers }:

cabal.mkDerivation (self: {
  pname = "rvar";
  version = "0.2.0.2";
  sha256 = "1n24fl27mrm7cndp8b646b9c5hjm3hf5m12y9ni0f850dd739jm4";
  buildDepends = [ MonadPrompt mtl randomSource transformers ];
  meta = {
    homepage = "https://github.com/mokus0/random-fu";
    description = "Random Variables";
    license = self.stdenv.lib.licenses.publicDomain;
    platforms = self.ghc.meta.platforms;
  };
})
