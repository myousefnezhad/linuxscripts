sudo dnf upgrade -refresh
sudo dnf install dnf-plugin-system-upgrade
sudo dnf system-upgrade download -refresh -releasever=34
sudo dnf system-upgrade reboot
