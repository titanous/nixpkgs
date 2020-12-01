{ stdenv, fetchurl, meson, ninja, pkgconfig, alsaLib, bmusb, eigen,
  epoxy, ffmpeg, libcef, libdrm, libjpeg, libmicrohttpd, libusb,
  libva, luajit, movit, protobuf, qt5, qcustomplot, SDL2, SDL2_image,
  srt, x264, zita-resampler }:

stdenv.mkDerivation rec {
  pname = "nageru";
  version = "2.0.1";

  src = fetchurl {
    url = "https://nageru.sesse.net/${pname}-${version}.tar.gz";
    sha256 = "0bq37wdrvfhmc293iz0wg1kz9f8abq0l4rxp0k9a2maj6aphdrka";
  };

  outputs = [ "out" "dev" ];

  nativeBuildInputs = [ meson ninja pkgconfig protobuf ];
  buildInputs = [ 
    alsaLib
    bmusb
    eigen
    epoxy
    ffmpeg
    libcef
    libdrm
    libjpeg
    libmicrohttpd
    libusb
    libva
    luajit
    movit
    qt5.qtbase
    qcustomplot
    SDL2
    SDL2_image
    srt
    x264
    zita-resampler
  ];

  enableParallelBuilding = true;

  patches = [
    ./patches/cef-build.patch
  ];

  mesonFlags = [
    "-Dcef_dir=${libcef}"
    "-Dcef_build_type=system"
  ];

  meta = with stdenv.lib; {
    description = "A modern free software video mixer";
    homepage = "https://nageru.sesse.net";
    license = licenses.gpl3;
    maintainers = [ maintainers.titanous ];
    platforms = platforms.linux;
  };
}
