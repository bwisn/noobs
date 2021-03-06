################################################################################
#
# libconfig
#
################################################################################

LIBCONFIG_VERSION = 1.4.9
LIBCONFIG_SITE = http://www.hyperrealm.com/libconfig
LIBCONFIG_LICENSE = LGPLv2.1+
LIBCONFIG_LICENSE_FILES = COPYING.LIB
LIBCONFIG_INSTALL_STAGING = YES
LIBCONFIG_CONF_OPTS = --disable-examples

ifneq ($(BR2_INSTALL_LIBSTDCPP),y)
LIBCONFIG_CONF_OPTS += --disable-cxx
endif

$(eval $(autotools-package))
