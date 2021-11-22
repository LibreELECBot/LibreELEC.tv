# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="xf86-video-nouveau"
PKG_VERSION="3ee7cbca8f9144a3bb5be7f71ce70558f548d268"
PKG_SHA256="941f1ce75a1dba0baf757c0add19898657886c2f826a76056abf4972c41f1a66"
PKG_ARCH="x86_64"
PKG_LICENSE="OSS"
PKG_SITE="https://nouveau.freedesktop.org/"
PKG_URL="https://gitlab.freedesktop.org/xorg/driver/${PKG_NAME}/-/archive/${PKG_VERSION}/${PKG_NAME}-${PKG_VERSION}.tar.bz2"
PKG_DEPENDS_TARGET="toolchain libXcomposite libXxf86vm libXdamage libdrm util-macros systemd xorg-server"
PKG_LONGDESC="Open-source Xorg graphics driver for Nvidia graphics."
PKG_TOOLCHAIN="autotools"

PKG_CONFIGURE_OPTS_TARGET="--with-xorg-module-dir=${XORG_PATH_MODULES}"
