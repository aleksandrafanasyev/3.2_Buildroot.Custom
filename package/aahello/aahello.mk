#########################################################################
#
# aahello
#
#########################################################################

AAHELLO_VERSION = master
AAHELLO_SITE = git://github.com/aleksandrafanasyev/aahello.git
AAHELLO_SITE_METHOD = git

define AAHELLO_BUILD_CMDS
	$(MAKE) CC="$(TARGET_CC)" -C $(@D) target
endef

define AAHELLO_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/target/aahello $(TARGET_DIR)/usr/bin
	$(INSTALL) -D -m 0755 $(@D)/target/libhello.so.0 $(TARGET_DIR)/usr/lib
endef

$(eval $(generic-package))

