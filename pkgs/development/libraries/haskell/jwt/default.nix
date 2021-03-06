# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, aeson, base64Bytestring, cryptohash, dataDefault
, httpTypes, HUnit, network, networkUri, QuickCheck, scientific
, tasty, tastyHunit, tastyQuickcheck, tastyTh, text, time
, unorderedContainers
}:

cabal.mkDerivation (self: {
  pname = "jwt";
  version = "0.4.2";
  sha256 = "167qm37y5f3d05spr0z2jwkbm2sszz3khs6zd1p0az5q4nhq295w";
  buildDepends = [
    aeson base64Bytestring cryptohash dataDefault httpTypes network
    networkUri scientific text time unorderedContainers
  ];
  testDepends = [
    aeson base64Bytestring cryptohash dataDefault httpTypes HUnit
    network networkUri QuickCheck scientific tasty tastyHunit
    tastyQuickcheck tastyTh text time unorderedContainers
  ];
  meta = {
    homepage = "https://bitbucket.org/ssaasen/haskell-jwt";
    description = "JSON Web Token (JWT) decoding and encoding";
    license = self.stdenv.lib.licenses.mit;
    platforms = self.ghc.meta.platforms;
  };
})
