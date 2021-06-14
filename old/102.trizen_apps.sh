sudo -u aurbuilder trizen -Syu --needed gnome-terminal-transparency veusz timeshift pamac-all google-chrome visual-studio-code-bin

sudo systemctl enable --now snapd.socket

sudo ln -s /var/lib/snapd/snap /snap

sudo -u aurbuilder trizen -Syu --needed krop
cd /usr/bin
sudo ./pip install PyPDF2

sudo -u aurbuilder trizen -Syu --needed ckb-next

sudo systemctl enable ckb-next-daemon

sudo systemctl start ckb-next-daemon
