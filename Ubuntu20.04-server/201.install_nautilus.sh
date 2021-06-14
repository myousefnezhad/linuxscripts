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
ln -sf /DATA/Downloads $HOME/Downloads
ln -sf /DATA/Documents $HOME/Documents
ln -sf /DATA/Music $HOME/Music
ln -sf /DATA/Pictures $HOME/Pictures
ln -sf /DATA/Videos $HOME/Videos
ln -sf /home/common $HOME/common
ln -sf /DATA/Datasets $HOME/datasets
ln -sf /DATA/Dataset2 $HOME/dataset2
ln -sf /DATA/Datasets.mini $HOME/datasets.mini
ln -sf /DATA/Workspace $HOME/workspace
ln -sf /DATA $HOME/DATA

# Reset Nautilus
nautilus -q

