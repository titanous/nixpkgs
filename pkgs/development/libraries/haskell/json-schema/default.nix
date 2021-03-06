# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, aeson, aesonUtils, attoparsec, genericAeson
, genericDeriving, mtl, scientific, tagged, tasty, tastyHunit
, tastyTh, text, time, unorderedContainers, vector
}:

cabal.mkDerivation (self: {
  pname = "json-schema";
  version = "0.7.0.2";
  sha256 = "1yh5zq10d0lyn67p5n3q445rcm18rdagj6pi2ic7fpyh9bks2r12";
  buildDepends = [
    aeson genericAeson genericDeriving mtl scientific tagged text time
    unorderedContainers vector
  ];
  testDepends = [
    aeson aesonUtils attoparsec genericAeson tagged tasty tastyHunit
    tastyTh text vector
  ];
  jailbreak = true;
  meta = {
    description = "Types and type classes for defining JSON schemas";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = with self.stdenv.lib.maintainers; [ aycanirican ];
  };
})
