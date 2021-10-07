#!/bin/bash
sudo dnf upgrade --refresh
sudo dnf install -y gcc kernel-headers kernel-devel akmod-nvidia kmod-nvidia xorg-x11-drv-nvidia xorg-x11-drv-nvidia-libs xorg-x11-drv-nvidia-libs.i686
sudo dnf install -y kernel-devel kernel-headers gcc dkms acpid libglvnd-glx libglvnd-opengl  libglvnd-devel pkgconfig xorg-x11-drv-nvidia-cuda

