#!/bin/bash
cd ~
wget https://atom.io/download/rpm -O ~/atom.rpm
sudo dnf localinstall ~/atom.rpm -y
rm ~/atom.rpm


cd ~
wget --trust-server-names https://go.skype.com/skypeforlinux-64.rpm
sudo dnf install ~/skypeforlinux-64.rpm -y
rm ~/skypeforlinux-64.rpm


sudo dnf config-manager --add-repo=http://negativo17.org/repos/fedora-spotify.repo
sudo  dnf install spotify-client -y


sudo snap install simplenote
