#!/bin/bash
sudo dnf install -y --allowerasing zsh samba samba-client openssh-server mc git netpbm vim curl npm libtool autoconf automake net-tools tree dkms tcsh libXp openmotif gsl netpbm-progs ed htop lm_sensors libde265* sysstat glances youtube-dl iftop libguestfs-tools-c nmap wireshark grsync libpng12 tmux openfortivpn neofetch snapd xclip hexedit gcc gcc-c++ make cmake glibc zlib-devel libappindicator-devel systemd-devel git ruby-devel clang wget compat-lua-libs libtermkey libtree-sitter libvterm luajit luajit2.1-luv msgpack unibilium xsel neovim helix

# ColorLS
sudo gem install colorls
sudo dnf copr enable luminoso/k9s -y
sudo dnf install -y k9s

