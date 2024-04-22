
apt install -y nfs-common
mkdir /K8S
echo "172.20.10.1:/K8S     /K8S   nfs   _netdev,nofail,x-systemd.automount,x-systemd.requires=network-online.target,x-systemd.device-timeout=10 0 0" >> /etc/fstab
sudo systemctl daemon-reload
mount -a
ls /K8S/
