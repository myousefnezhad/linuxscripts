# Google Chrome
cd ~
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

# Skype
#cd ~
#wget --trust-server-names https://repo.skype.com/latest/skypeforlinux-64.deb
#sudo dpkg -i ~/skypeforlinux-64.deb
#rm ~/skypeforlinux-64.deb

# Spotify
#sudo snap install spotify

# FreeSurface lib
sudo ln -s /usr/lib/x86_64-linux-gnu/libpng16.so.16 /usr/lib/x86_64-linux-gnu/libpng12.so.0

# Atom
#wget https://atom.io/download/deb -O ~/atom.deb
#sudo dpkg -i ~/atom.deb 
#rm ~/atom.deb
