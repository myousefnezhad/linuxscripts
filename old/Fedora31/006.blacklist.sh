#!/bin/bash
echo "blacklist nouveau" >> /etc/modprobe.d/blacklist.conf

echo "blacklist nouveau" >> /etc/modprobe.d/blacklist-nouveau.conf

echo "options nouveau modeset=0" >> /etc/modprobe.d/blacklist-nouveau.conf
