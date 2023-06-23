sudo apt install vsftpd -y
sudo ln -sf /home/common/install/vsftpd.conf /etc/vsftpd.conf
sudo systemctl enable --now vsftpd
