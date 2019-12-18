PKG_NAME="alsa-ucm-conf"
PKG_VERSION="1.2.1.2"
PKG_SHA256="ea8a86875f4cf430d49a662a04a6d6c606c5c9d67e54cb944c4d77b24554062f"
PKG_SITE="http://www.alsa-project.org/"
PKG_URL="ftp://ftp.alsa-project.org/pub/lib/alsa-ucm-conf-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="alsa-lib"
PKG_LONGDESC="ALSA Use Case Manager configuration (and topologies)"

post_makeinstall_target() {
  mkdir -p $INSTALL/usr/share/alsa/ucm2
    cp -PR $PKG_DIR/ucm2/* $INSTALL/usr/share/alsa/ucm2
}
