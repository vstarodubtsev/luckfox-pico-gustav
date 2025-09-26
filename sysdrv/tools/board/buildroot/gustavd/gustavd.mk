################################################################################
#
# gustavd
#
################################################################################

GUSTAVD_VERSION = 1.5.1
GUSTAVD_SITE = https://github.com/vstarodubtsev/gustavd/archive/$(GUSTAVD_VERSION)
GUSTAVD_LICENSE = GPL-2.0
GUSTAVD_LICENSE_FILES = COPYING

$(eval $(cmake-package))
