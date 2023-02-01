#!/bin/sh
TIME=$(date "+%Y-%m-%d %H:%M:%S")
sed -i "/# GitHub520 Host Start/Q" /etc/hosts && curl https://raw.hellogithub.com/hosts >> /etc/hosts
echo "$TIME done"
