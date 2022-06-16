# SPDX-License-Identifier: GPL-2.0-or-later

PKG_NAME="RTL88x2BU"
PKG_VERSION="998300820cf245b3ca90b853068fcc2b8e4d2767"
PKG_SHA256="00e6bce62e36748f0e51d54eff7bc28bc1e3b02362a104c1ebbf5c5946535670"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/RinCat/RTL88x2BU-Linux-Driver"
PKG_URL="https://github.com/RinCat/RTL88x2BU-Linux-Driver/archive/${PKG_VERSION}.tar.gz"
PKG_LONGDESC="Realtek RTL8822BU Linux driver"
PKG_IS_KERNEL_PKG="yes"

pre_make_target() {
  unset LDFLAGS
}

make_target() {
  make V=1 \
       ARCH=${TARGET_KERNEL_ARCH} \
       KSRC=$(kernel_path) \
       CROSS_COMPILE=${TARGET_KERNEL_PREFIX} \
       CONFIG_POWER_SAVING=n
}

makeinstall_target() {
  mkdir -p ${INSTALL}/$(get_full_module_dir)/${PKG_NAME}
    cp *.ko ${INSTALL}/$(get_full_module_dir)/${PKG_NAME}
}
