# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2021-present Team LibreELEC (https://libreelec.tv)

import xbmc


class Monitor(xbmc.Monitor):

   def __init__(self, *args, **kwargs):
      xbmc.Monitor.__init__(self)

if __name__ == "__main__":
   Monitor().waitForAbort()
