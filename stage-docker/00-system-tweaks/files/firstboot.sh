#!/bin/bash
# This script will run the first time the raspberry pi boots.
# It runs as root.

echo '>>> Starting firstboot.sh'

# resize root partion to possible maximum
echo 'Resizing root partition'
raspi-config nonint do_expand_rootfs

# get current date from debian time server
echo 'Updating date and time'
ntpdate 0.debian.pool.ntp.org

# Reboot
echo 'Rebooting'
reboot
