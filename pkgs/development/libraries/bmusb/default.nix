{ stdenv, fetchgit, libusb, pkgconfig }:

stdenv.mkDerivation rec {
  pname = "bmusb";
  version = "0.7.6";

  src = fetchgit {
    rev = "refs/tags/${version}";
    url = "https://git.sesse.net/bmusb";
    sha256 = "1n4jmi535a6yifv9bv6xpvrkwwpvkx0sm1sr0df4dq024c1ykdwy";
  };

  enableParallelBuilding = true;

  makeFlags = [ "DESTDIR=$(out)" "UDEVDIR=/lib/udev" "PREFIX=" ];

  patchPhase = ''
    sed 's/-o root -g root//' -i Makefile
  '';

  nativeBuildInputs = [ pkgconfig ];
  buildInputs = [ libusb ];

  meta = with stdenv.lib; {
    description = "A driver for BlackMagic Intensity Shuttle and UltraStudio SDI USB3 video capture devices";
    homepage = "https://git.sesse.net/?p=bmusb;a=tree";
    license = licenses.gpl2Plus;
    maintainers = [ maintainers.titanous ];
    platforms = platforms.linux;
  };
}
