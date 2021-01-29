#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
#git clone https://github.com/yichya/openwrt-xray package/openwrt-xray
#git clone https://github.com/yichya/luci-app-xray package/luci-app-xray

git clone https://github.com/kuoruan/openwrt-v2ray.git package/v2ray-core
git clone -b luci2 https://github.com/kuoruan/luci-app-v2ray.git package/luci-app-v2ray

git clone https://github.com/mchome/openwrt-vlmcsd package/openwrt-vlmcsd
git clone https://github.com/mchome/luci-app-vlmcsd package/luci-app-vlmcsd

git clone https://github.com/hungleungi/openwrt-passwall package/openwrt-passwall
git clone https://github.com/hungleungi/luci-app-passwall package/luci-app-passwall

git clone https://github.com/AdguardTeam/AdGuardHome package/AdGuardHome
git clone https://github.com/rufengsuixing/luci-app-adguardhome package/luci-app-adguardhome

#git clone https://github.com/pymumu/openwrt-smartdns package/openwrt-smartdns
git clone https://github.com/pymumu/luci-app-smartdns package/luci-app-smartdns

# Modify default IP
sed -i 's/192.168.1.1/192.168.10.252/g' package/base-files/files/bin/config_generate
