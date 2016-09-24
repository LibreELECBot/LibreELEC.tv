################################################################################
#      This file is part of LibreELEC - http://www.libreelec.tv
#      Copyright (C) 2009-2016 Lukas Rusak (lrusak@libreelec.tv)
#
#  LibreELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  LibreELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with LibreELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="libretro-ppsspp"
# PKG_VERSION="2ddea9a" -> OUTDATED VERSION
PKG_VERSION="e1bb9da" 
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPLv2"
PKG_SITE="https://github.com/libretro/libretro-ppsspp"
# PKG_URL="$LAKKA_MIRROR/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_URL="https://github.com/libretro/libretro-ppsspp/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_PRIORITY="optional"
PKG_SECTION="libretro"
PKG_SHORTDESC="Libretro port of PPSSPP"
PKG_LONGDESC="A fast and portable PSP emulator"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

# post_unpack() {
#   mv $BUILD/libretro-ppsspp-$PKG_VERSION* $BUILD/$PKG_NAME-$PKG_VERSION
# git clone --depth 1 https://github.com/libretro/ppsspp-ffmpeg.git $BUILD/$PKG_NAME-$PKG_VERSION/ffmpeg
#  git clone --depth 1 https://github.com/libretro/ppsspp-native.git $BUILD/$PKG_NAME-$PKG_VERSION/native
#  git clone --depth 1 https://github.com/Kingcom/armips.git $BUILD/$PKG_NAME-$PKG_VERSION/ext/armips
#}

#pre_configure_target() {
#  strip_lto
#}

#make_target() {
#  cd $ROOT/$PKG_BUILD/libretro
#  if [ "$OPENGLES" == "gpu-viv-bin-mx6q" ]; then
#    CFLAGS="$CFLAGS -DLINUX -DEGL_API_FB"
#    CXXFLAGS="$CXXFLAGS -DLINUX -DEGL_API_FB"
#  fi
#  if [ "$OPENGLES" == "bcm2835-driver" ]; then
#    CFLAGS="$CFLAGS -I$SYSROOT_PREFIX/usr/include/interface/vcos/pthreads"
#    CXXFLAGS="$CXXFLAGS -I$SYSROOT_PREFIX/usr/include/interface/vcos/pthreads"
#  fi
#  if [ "$ARCH" == "arm" ]; then
#    SYSROOT_PREFIX=$SYSROOT_PREFIX make platform=imx6
#  else
#    make
#  fi
#}

# makeinstall_target() {
#  mkdir -p $INSTALL/usr/lib/libretro
#  cp ../libretro/ppsspp_libretro.so $INSTALL/usr/lib/libretro/
#}

make_target() {
  make platform=rpi2 CC=$CC CXX=$CXX -j3
}

makeinstall_target() {
  mkdir -p $INSTALL/usr/lib/libretro
  cp uae4arm_libretro.so $INSTALL/usr/lib/libretro/
}


