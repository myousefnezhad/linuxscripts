cd ~
wget https://go.dev/dl/go1.21.1.linux-amd64.tar.gz -O ~/go.tar.gz
tar xvf ~/go.tar.gz
sudo rm -rf /usr/local/go
mv ~/go /usr/local/.
