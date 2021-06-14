#!/bin/bash
sudo ln -sf /var/lib/snapd/snap /snap

sudo ln -sf /var/lib/snapd/desktop/applications/ /usr/share/applications/snap 


sudo dnf install fedora-workstation-repositories

sudo dnf config-manager --set-enabled google-chrome

sudo dnf install google-chrome-stable -y
