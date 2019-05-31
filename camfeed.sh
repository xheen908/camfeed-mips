#!/bin/bash

rm /etc/opkg/secret-feed.conf
rm /etc/opkg/deb-feed.conf
opkg remove softcam-feed-universal
cd /tmp
wget --no-check-certificate https://github.com/xheen908/camfeed-mips/raw/master/softcam-feed-universal_4.3-r0_all.ipk
opkg install softcam-feed-universal_4.3-r0_all.ipk
touch /etc/opkg/deb-feed.conf
echo 'src/gz deb-feed http://camfeed.digital-eliteboard.com/opkg/mips' >> /etc/opkg/deb-feed.conf
opkg update
cd
rm camfeed.sh

