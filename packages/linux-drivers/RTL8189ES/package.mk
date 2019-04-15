# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="RTL8189ES"
PKG_VERSION="e00a5e607dc45863bcdceabb03a7c4f7c37dcfde"
PKG_SHA256="7674a60fc6d83775561a1d49d2d0b66d7b572d5c7e897c88cd297aefd76f574d"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/jwrdegoede/rtl8189ES_linux.git"
PKG_URL="https://github.com/jwrdegoede/rtl8189ES_linux/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain linux"
PKG_NEED_UNPACK="$LINUX_DEPENDS"
PKG_LONGDESC="Realtek RTL8189FS Linux driver"
PKG_IS_KERNEL_PKG="yes"

pre_make_target() {
  unset LDFLAGS
}

post_unpack() {
  sed -i 's/^CONFIG_RTL8188F.*$/CONFIG_RTL8188F = y/g; s/^CONFIG_SDIO_HCI.*$/CONFIG_SDIO_HCI = y/g' $PKG_BUILD/Makefile
  #sed -i 's/-DCONFIG_CONCURRENT_MODE//g; s/^CONFIG_RTL8188F.*$/CONFIG_RTL8188F = y/g; s/^CONFIG_POWER_SAVING.*$/CONFIG_POWER_SAVING = n/g; s/^CONFIG_RTW_DEBUG.*/CONFIG_RTW_DEBUG = n/g' $PKG_BUILD/*/Makefile
  #sed -i 's/^#define CONFIG_DEBUG.*//g' $PKG_BUILD/*/include/autoconf.h
  #sed -i 's/#define DEFAULT_RANDOM_MACADDR.*1/#define DEFAULT_RANDOM_MACADDR 0/g' $PKG_BUILD/*/core/rtw_ieee80211.c
}

make_target() {
  make V=1 \
       ARCH=$TARGET_KERNEL_ARCH \
       KSRC=$(kernel_path) \
       CROSS_COMPILE=$TARGET_KERNEL_PREFIX \
       CONFIG_POWER_SAVING=n \
       CONFIG_SDIO_HCI=y
}

makeinstall_target() {
  mkdir -p $INSTALL/$(get_full_module_dir)/$PKG_NAME
    cp *.ko $INSTALL/$(get_full_module_dir)/$PKG_NAME
}
