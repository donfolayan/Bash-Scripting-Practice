#!/usr/bin/bash

#Update, Upgrade Utilities to latest version and remove outdated utilities

apt-get update -y
apt-get upgrade -y
apt-get remove -y

#Usage: Use root access or sudo while running
#You can set a cronjob for this to run at reboot
