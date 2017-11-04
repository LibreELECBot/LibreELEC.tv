################################################################################
#      This file is part of LibreELEC - https://libreelec.tv
#      Copyright (C) 2017-present Team LibreELEC
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

PKG_NAME="le_tuf"
PKG_VERSION="1"
PKG_LICENSE="GPLv2"
PKG_DEPENDS_TARGET="cffi libsodium"
PKG_LONGDESC="The Update Framework for LibreELEC"

PKG_IS_PYTHON="yes"

pre_make_target() {
  export LDSHARED="-pthread"
  export SODIUM_INSTALL="system"

  touch dummy.py

  cat << EOF > setup.py
#!/usr/bin/env python

from setuptools import setup

setup(name='$PKG_NAME',
      version='$PKG_VERSION',
      description='$PKG_LONGDESC',
      author='Team LibreELEC',
      url=' https://libreelec.tv',
      py_modules = ['dummy'],
      install_requires=[
          "PyNaCl==1.1.2",
          "asn1crypto==0.23.0",
          "cryptography==2.1.3",
          "enum34==1.1.6",
          "idna==2.6",
          "ipaddress==1.0.18",
          "iso8601==0.1.12",
          "natsort==5.1.0",
          "pycryptodome==3.4.7",
          "securesystemslib==0.10.7",
          "six==1.11.0",
          "tuf==0.10.0",
        ],
      dependency_links = [
          "https://github.com/secure-systems-lab/securesystemslib/zipball/f7f51ac#egg=securesystemslib-0.10.7"
        ],
     )
EOF
}

post_make_target() {
  cp -r "$(get_build_dir cffi)"/.install_pkg/lib/*.egg \
        "$INSTALL/lib"
}
