#!/bin/bash
sudo dnf install nginx -y
sudo ln -sf /home/common/install/Fedora31/nginx.conf /etc/nginx/nginx.conf
echo "Enter Tony Password"
sudo htpasswd -c /etc/nginx/htpasswd tony
sudo systemctl enable nginx.service
sudo systemctl start nginx.service
