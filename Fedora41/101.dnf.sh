#!/bin/bash
sudo dnf install -y --allowerasing zsh goldendict samba samba-client openssh-server mc git  gpick gwenview jcal okular qt5-designer renameutils python-qt5 netpbm gnome-tweaks vim curl npm  libimobiledevice-utils  usbmuxd   ifuse libtool autoconf automake espeak  net-tools tree dkms pdfshuffler stella nautilus-extensions nautilus-devel tcsh libXp openmotif gsl xorg-x11-fonts-misc R-devel netpbm-progs gnome-tweak-tool ed xorg-x11-server-Xvfb htop lm_sensors kdenlive libde265* timeshift gparted pdfmod pdfshuffler pdf-stapler pdf-tools pdfmerge pdfbox remmina WoeUSB xbacklight sysstat htop glances youtube-dl iftop monitorix feh qt-devel qt-doc  gnome-mpv libguestfs-tools-c kolourpaint putty nmap geeqie gitg zsnes papirus-icon-theme wireshark persepolis grsync libpng12 thunderbird VirtualBox remmina thunderbird tmux iftop remmina openfortivpn gparted firefox cmatrix terminator neofetch gpac mkvtoolnix mkvtoolnix-gui fuse-exfat snapd libreoffice-base libreoffice-writer libreoffice-calc libreoffice-pdfimport libreoffice-math libreoffice-langpack-fa libreoffice-TexMaths libreoffice-draw libreoffice-core libreoffice-emailmerge libreoffice-filters libreoffice-graphicfilter libreoffice-gallery-vrt-network-equipment libreoffice-wiki-publisher libreoffice-officebean libreoffice-xsltfilter libreoffice-ogltrans libreoffice-nlpsolver xclip hexedit gcc gcc-c++ make cmake glibc zlib-devel qt5-qtbase-devel quazip-qt5-devel libappindicator-devel systemd-devel pulseaudio-libs-devel qt5-linguist qt5-qtx11extras-devel xcb-util-wm-devel xcb-util-devel libxcb-devel git ckb-next kicad conky krop obs-studio x2goserver x2goclient screenfetch x11vnc lsd inxi bookworm fbreader docker docker-compose klatexformula mplayer ruby-devel kubernetes-client ninja-build clang gtk3-devel
# ColorLS
sudo gem install colorls
sudo dnf copr enable luminoso/k9s -y
sudo dnf install -y k9s

#texlive-scheme-full texlive texlive-latex texlive-xetex texlive-collection-latex texlive-collection-latexrecommended texlive-xetex-def texlive-collection-xetex texlive-collection-latexextra 