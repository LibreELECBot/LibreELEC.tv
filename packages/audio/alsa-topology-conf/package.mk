PKG_NAME="alsa-topology-conf"
PKG_VERSION="1.2.1"
PKG_SHA256="354a43f4031c98bef1349ac722d83b2603ef439f81a1ab1eba8814c28243a9b2"
PKG_SITE="http://www.alsa-project.org/"
PKG_URL="ftp://ftp.alsa-project.org/pub/lib/alsa-topology-conf-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="alsa-lib"
PKG_LONGDESC="ALSA topology configuration files"

post_makeinstall_target() {
  mkdir -p $INSTALL/usr/share/alsa/topology
    cp -PR $PKG_DIR/topology/* $INSTALL/usr/share/alsa/topology
}
