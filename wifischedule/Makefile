#
# Copyright (C) 2010-2011 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=wifischedule
PKG_VERSION:=0.1
PKG_RELEASE:=4

include $(INCLUDE_DIR)/package.mk

define Package/wifischedule
	SECTION:=net
	CATEGORY:=Network
	DEPENDS:=
	TITLE:=A wifi scheduler
	URL:=http://openwrt.razvi.ro/wifischedule/wifischedule_$(PKG_VERSION)-$(PKG_RELEASE).ipk
	MAINTAINER:=Razvan Stanga <wifischedule@razvi.ro>
endef

define Package/wifischedule/description
Wifi Schedule is a very useful app which will allow you to manage and schedule when your device Wi-Fi will turn on and off.
endef

define Package/wifischedule/conffiles
/etc/config/wifi_schedule
endef

define Build/Compile
endef

define Package/wifischedule/install
$(CP) ./files/* $(1)
endef

define Package/wifischedule/postinst
#!/bin/sh
if [ -z "$${IPKG_INSTROOT}" ]
then
/etc/init.d/wifi_schedule enable
/etc/init.d/wifi_schedule start

grep -q 'wifi_schedule' $${IPKG_INSTROOT}/etc/config/ucitrack 2>/dev/null
[ $$? -ne 0 ] && {
       echo "" >>$${IPKG_INSTROOT}/etc/config/ucitrack
       echo "config wifi_schedule" >>$${IPKG_INSTROOT}/etc/config/ucitrack
       echo "       option init wifi_schedule" >>$${IPKG_INSTROOT}/etc/config/ucitrack
}

fi
exit 0
endef

define Package/wifischedule/prerm
#!/bin/sh
/etc/init.d/wifi_schedule disable
/etc/init.d/wifi_schedule stop
endef

define Package/wifischedule/postrm
#!/bin/sh
uci delete ucitrack.@wifi_schedule[0].init
uci delete ucitrack.@wifi_schedule[0]
uci commit
endef

$(eval $(call BuildPackage,wifischedule))
