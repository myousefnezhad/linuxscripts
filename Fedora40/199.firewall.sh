#!/bin/bash
#sudo firewall-cmd --remove-port=1025-65535/udp
#sudo firewall-cmd --remove-port=1025-65535/tcp
#sudo firewall-cmd --permanent --add-service=samba
sudo firewall-cmd --permanent --add-service=samba-client
#sudo firewall-cmd --permanent --add-service=http
#sudo firewall-cmd --permanent --add-service=mysql
# GSM
#sudo firewall-cmd --permanent --add-port=1716/tcp
#sudo firewall-cmd --permanent --add-port=1716/udp
sudo firewall-cmd --permanent --add-port=3389/tcp
sudo firewall-cmd --permanent --add-service=nfs
sudo firewall-cmd --add-service={nfs3,mountd,rpc-bind} --permanent 
#sudo firewall-cmd --permanent --add-port=1365/tcp
sudo firewall-cmd --reload
sudo firewall-cmd --list-all

#sudo firewall-cmd --zone=public --permanent --add-port=1714-1764/udp
#sudo firewall-cmd --zone=public --permanent --add-port=1714-1764/tcp
#sudo firewall-cmd --zone=public --permanent --add-port=1900-1900/udp
#sudo firewall-cmd --zone=public --permanent --add-port=1900-1900/tcp
#sudo firewall-cmd --permanent --add-port=1900-1900/udp
#sudo firewall-cmd --permanent --add-port=1900-1900/tcp
#sudo firewall-cmd --permanent --add-port=4040-4040/udp
#sudo firewall-cmd --permanent --add-port=4040-4040/tcp
