#!/bin/bash
sudo cp repos/dirkdavidis-papirus-icon-theme.repo /etc/yum.repos.d/.
sudo dnf update -y --refresh
sudo dnf install papirus-icon-theme -y
