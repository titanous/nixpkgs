# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, attoparsec, setlocale, utf8String }:

cabal.mkDerivation (self: {
  pname = "wcwidth";
  version = "0.0.2";
  sha256 = "1n1fq7v64b59ajf5g50iqj9sa34wm7s2j3viay0kxpmvlcv8gipz";
  isLibrary = true;
  isExecutable = true;
  buildDepends = [ attoparsec setlocale utf8String ];
  meta = {
    homepage = "http://github.com/solidsnack/wcwidth/";
    description = "Native wcwidth";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    hydraPlatforms = self.stdenv.lib.platforms.none;
  };
})
