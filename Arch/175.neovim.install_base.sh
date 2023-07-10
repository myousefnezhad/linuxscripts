cd /usr/local/bin
sudo curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
sudo chmod +x nvim.appimage
sudo ln -sf /usr/local/bin/nvim.appimage /usr/local/bin/nvim
sudo mkdir -p /var/lib/flatpak/exports/share/nvim
sudo chmod -c 7777 -R /var/lib/flatpak/exports/share/nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim /var/lib/flatpak/exports/share/nvim/site/pack/packer/start/packer.nvim
ln -sf /home/common/install/nvim $HOME/.config/nvim
