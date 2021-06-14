
sudo pacman -Syu --needed x2goserver x2goclient
sudo x2godbadmin --createdb
sudo systemctl enable x2goserver.service
sudo systemctl start x2goserver.service
