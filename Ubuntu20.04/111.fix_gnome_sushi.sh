#!/bin/bash

cd ~
git clone https://gitlab.gnome.org/GNOME/sushi.git
cd sushi-3.38.0
sudo apt remove gnome-sushi
sudo apt install meson libevince-dev gir1.2-gstreamer-1.0 librust-gstreamer-audio-sys-dev librust-gstreamer-audio-sys-dev libgtksourceview-4-dev libmusicbrainz5-dev libwebkit2gtk-4.0-dev libgirepository1.0-dev ninja-build
meson builddir && cd builddir
sudo meson install

