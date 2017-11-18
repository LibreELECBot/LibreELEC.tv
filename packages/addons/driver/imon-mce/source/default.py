################################################################################
#      This file is part of LibreELEC - https://libreelec.tv
#      Copyright (C) 2016-present Team LibreELEC
#      Copyright (C) 2009-2014 Stephan Raue (stephan@openelec.tv)
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

import os
import sys
import xbmcaddon

__scriptname__ = "IMON MCE Remote driver"
__author__ = "LibreELEC"
__url__ = "https://libreelec.tv"
__settings__   = xbmcaddon.Addon(id='driver.remote.imon-mce')
__cwd__        = __settings__.getAddonInfo('path')
__path__       = xbmc.translatePath( os.path.join( __cwd__, 'bin', "imon-mce.service") )

os.system(__path__)
