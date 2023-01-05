#!/bin/bash

# Modify Default IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

# Modify default hostname
sed -i 's/ImmortalWrt/Railgun/g' package/base-files/files/bin/config_generate

# Enable 802.11 k/v/r
sed -i 's/RRMEnable=0/RRMEnable=1/g' package/kernel/mt-drivers/mt_wifi/files/mt7615.1.2G.dat
sed -i 's/RRMEnable=0/RRMEnable=1/g' package/kernel/mt-drivers/mt_wifi/files/mt7615.1.5G.dat
sed -i 's/FtSupport=0/FtSupport=1/g' package/kernel/mt-drivers/mt_wifi/files/mt7615.1.2G.dat
sed -i 's/FtSupport=0/FtSupport=1/g' package/kernel/mt-drivers/mt_wifi/files/mt7615.1.5G.dat
echo 'WNMEnable=1' >> package/kernel/mt-drivers/mt_wifi/files/mt7615.1.2G.dat
echo 'WNMEnable=1' >> package/kernel/mt-drivers/mt_wifi/files/mt7615.1.5G.dat