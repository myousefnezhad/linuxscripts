#!/bin/bash
# Modifying /etc/xdg/user-dirs.defaults
sudo sed -i 's/TEMPLATES=Templates/#TEMPLATES=Templates/g' /etc/xdg/user-dirs.defaults
sudo sed -i 's/PUBLICSHARE=Public/#PUBLICSHARE=Public/g' /etc/xdg/user-dirs.defaults
#sudo sed -i 's/DOCUMENTS=Documents/#DOCUMENTS=Documents/g' /etc/xdg/user-dirs.defaults

# Modifying $HOME/.config/user-dirs.dirs
sed -i 's|XDG_TEMPLATES_DIR="$HOME/Templates"|#XDG_TEMPLATES_DIR="$HOME/Templates"|g' $HOME/.config/user-dirs.dirs
sed -i 's|XDG_PUBLICSHARE_DIR="$HOME/Public"|#XDG_PUBLICSHARE_DIR="$HOME/Public"|g' $HOME/.config/user-dirs.dirs
#sed -i 's|XDG_DOCUMENTS_DIR="$HOME/Documents"|#XDG_DOCUMENTS_DIR="$HOME/Documents"|g' $HOME/.config/user-dirs.dirs

# Removing Folders
rm -rf $HOME/Templates
rm -rf $HOME/Downloads
rm -rf $HOME/Music
rm -rf $HOME/Pictures
rm -rf $HOME/Videos
rm -rf $HOME/Public
rm -rf $HOME/Documents

# Creating Links
ln -sf /IRONMAN/Downloads $HOME/Downloads
ln -sf /IRONMAN/Documents $HOME/Documents
ln -sf /IRONMAN/Music $HOME/Music
ln -sf /IRONMAN/Pictures $HOME/Pictures
ln -sf /IRONMAN/Videos $HOME/Videos
ln -sf /home/common $HOME/common
ln -sf /IRONMAN/Workspace $HOME/workspace
ln -sf /IRONMAN $HOME/IRONMAN

# Reset Nautilus
nautilus -q

