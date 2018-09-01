# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="kernel-backports"
PKG_VERSION="4.4.2-1"
PKG_SHA256="a979e194c2ed9fdfca092a448e626d85c5af0e4de5ad993c0967afd15af01285"
PKG_ARCH="arm aarch64"
PKG_LICENSE="GPL"
PKG_SITE="http://www.kernel.org"
PKG_URL="https://www.kernel.org/pub/linux/kernel/projects/backports/stable/v4.4.2/backports-$PKG_VERSION.tar.xz"
PKG_SOURCE_DIR="backports-$PKG_VERSION"
PKG_DEPENDS_TARGET="toolchain linux"
PKG_NEED_UNPACK="$LINUX_DEPENDS"
PKG_SECTION="driver"
PKG_LONGDESC="The backports project provides device drivers from recent versions of Linux usable on older Linux kernel releases."
PKG_TOOLCHAIN="manual"
PKG_IS_KERNEL_PKG="yes"

pre_make_target() {
  cp $PKG_DIR/config/bt.config $PKG_BUILD/defconfigs/bt
  unset CFLAGS
  unset LDFLAGS
}

make_target() {
  make defconfig-bt \
       CC=gcc \
       KLIB=$INSTALL \
       KLIB_BUILD=$(kernel_path)
  LDFLAGS="" CFLAGS="" make \
       KLIB=$INSTALL \
       KLIB_BUILD=$(kernel_path) \
       ARCH=$TARGET_KERNEL_ARCH \
       CROSS_COMPILE=$TARGET_KERNEL_PREFIX
}

makeinstall_target() {
  mkdir -p $INSTALL/$(get_full_module_dir)/kernel
    find . -name \*.ko -not -path '*/\.*' -exec cp --parents {} $INSTALL/$(get_full_module_dir)/kernel \;
}
