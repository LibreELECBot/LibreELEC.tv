# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)
# Copyright (C) 2020-present Alexander Amelkin (alexander@amelkin.msk.ru)

PKG_NAME="RTL8821CU"
PKG_VERSION="2bebdb9a35c1d9b6e6a928e371fa39d5fcec8a62"
PKG_SHA256="e6d2fde8d3d4a857e9f6089378034716ce7b8406f790d789edfc46e469512dae"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/brektrou/rtl8821CU"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"
PKG_LONGDESC="Realtek RTL8821CU Linux 5.x driver"
PKG_IS_KERNEL_PKG="yes"

pre_make_target() {
  unset LDFLAGS
}

make_target() {
  make V=1 \
       ARCH=$TARGET_KERNEL_ARCH \
       KSRC=$(kernel_path) \
       CROSS_COMPILE=$TARGET_KERNEL_PREFIX \
       CONFIG_POWER_SAVING=n 2>&1 | tee /tmp/make.log
}

makeinstall_target() {
  mkdir -p $INSTALL/$(get_full_module_dir)/$PKG_NAME
    cp *.ko $INSTALL/$(get_full_module_dir)/$PKG_NAME
}
