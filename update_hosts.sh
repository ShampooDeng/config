#!/bin/bash

# Github520
sed -i "/# GitHub520 Host Start/Q" /etc/hosts && curl https://raw.hellogithub.com/hosts >> /etc/hosts

# Steam520
sed -i '$a \\n# Steam520 Host' /etc/hosts
sed -i '$a \\n# Steam520 Host Start' /etc/hosts
sed -i "/# Steam520 Host Start/Q" /etc/hosts && curl https://raw.githubusercontent.com/pboymt/Steam520/main/hosts >> /etc/hosts

