{ stdenv, lib, fetchurl, qtbase, pkgconfig, cmake }:

stdenv.mkDerivation rec {
  pname = "qcustomplot";
  version = "2.0.1";

  src = fetchurl {
    url = "https://www.qcustomplot.com/release/${version}/QCustomPlot-source.tar.gz";
    sha256 = "1r1z82r017ffp76np1xnp5y2f54jhll398k80441s9gkvr3ywk2p";
    name = "${pname}-${version}.tar.gz";
  };

  buildInputs = [ qtbase ];
  nativeBuildInputs = [ cmake pkgconfig ];

  patchPhase = ''
    cp ${./CMakeLists.txt} CMakeLists.txt
  '';

  meta = with stdenv.lib; {
    description = "A Qt C++ widget for plotting and data visualization";
    homepage = "https://www.qcustomplot.com";
    license = licenses.gpl3;
    maintainers = [ maintainers.titanous ];
    platforms = platforms.linux;
  };
}
