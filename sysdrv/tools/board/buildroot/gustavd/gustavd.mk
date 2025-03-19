################################################################################
#
# gustavd
#
################################################################################

GUSTAVD_VERSION = 1.3.2
GUSTAVD_SITE = https://github.com/vstarodubtsev/gustavd/archive/refs/tags/$(GUSTAVD_VERSION)
GUSTAVD_LICENSE = GPL-2.0
GUSTAVD_LICENSE_FILES = COPYING

$(eval $(cmake-package))
