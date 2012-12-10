#
# Copyright (C) 2010-2011 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-wifischedule
PKG_VERSION:=0.1
PKG_RELEASE:=2

include $(INCLUDE_DIR)/package.mk

define Package/luci-app-wifischedule
  SECTION:=luci
  CATEGORY:=LuCI
  DEPENDS:=+wifischedule
  TITLE:=LuCI - Lua Configuration Interface
  URL:=http://openwrt.razvi.ro/wifischedule/luci-app-wifischedule_$(PKG_VERSION)-$(PKG_RELEASE).ipk
  MAINTAINER:=Razvan Stanga <wifischedule@razvi.ro>
  SUBMENU:=3. Applications
  TITLE:=LuCI Support for wifischedule
endef

define Package/luci-app-wifischedule/description
Wifi Schedule is a very useful app which will allow you to manage and schedule when your device Wi-Fi will turn on and off.
endef

define Build/Compile
endef

define Package/luci-app-wifischedule/install
	$(CP) ./files/* $(1)
endef

$(eval $(call BuildPackage,luci-app-wifischedule))
