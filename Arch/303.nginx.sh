#!/bin/bash
sudo pacman -Syu nginx
sudo ln -sf /home/common/install/Arch/nginx.conf /etc/nginx/nginx.conf
echo "Enter Tony Password"
sudo htpasswd -c /etc/nginx/htpasswd tony
sudo systemctl enable nginx.service
sudo systemctl start nginx.service
