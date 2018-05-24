#########################################################################
#
# aagpio
#
#########################################################################

AAGPIO_VERSION = master
AAGPIO_SITE = git://github.com/aleksandrafanasyev/gpio.git
AAGPIO_SITE_METHOD = git

define AAGPIO_BUILD_CMDS
	$(MAKE) CC="$(TARGET_CC)" -C $(@D) target
endef

define AAGPIO_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/target/aagpio $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))



