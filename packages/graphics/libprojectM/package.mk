# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libprojectM"
PKG_VERSION="3.1.12"
PKG_SHA256="b6b99dde5c8f0822ae362606a0429628ee478f4ec943a156723841b742954707"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/projectM-visualizer/projectm"
PKG_URL="https://github.com/projectM-visualizer/projectm/releases/download/v${PKG_VERSION}/projectM-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain freetype glm ${OPENGL}"
PKG_LONGDESC="A MilkDrop compatible opensource music visualizer."
PKG_TOOLCHAIN="configure"
PKG_BUILD_FLAGS="+pic"

PKG_CONFIGURE_OPTS_TARGET="--disable-shared \
                           --enable-static \
                           --disable-qt \
                           --disable-pulseaudio \
                           --disable-jack \
                           --disable-threading \
                           --enable-preset-subdirs"
