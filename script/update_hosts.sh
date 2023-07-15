#!/bin/sh
sed -i "/# GitHub520 Host Start/Q" /etc/hosts && curl https://raw.hellogithub.com/hosts >> /etc/hosts
TIME=$(date "+%Y-%m-%d %H:%M:%S")
echo "$TIME github520 done"

sed -i '$a \\n' /etc/hosts # Add two blank line. Make sure it's ''.
sed -i "/#steam Start/Q" /etc/hosts && curl https://raw.gitmirror.com/Clov614/SteamHostSync/main/Hosts_steam >> /etc/hosts
TIME=$(date "+%Y-%m-%d %H:%M:%S")
echo "$TIME SteamHosts done"
