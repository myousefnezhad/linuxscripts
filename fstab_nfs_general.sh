sudo apt install -y nfs-common
sudo mkdir -p \
  /IRONMAN \
  /IRONMAN1 \
  /IRONMAN2 \
  /IRONMAN3 \
  /IRONMAN4 \
  /IRONMAN5 \
  /IRONMAN6 \
  /IRONMAN20 \
  /IRONMAN22 \
  /IRONMAN30 \
  /JARVIS1 \
  /JARVIS2 \
  /JERICHO1 \
  /DOWNLOADS \
  /WORKSPACE \
  /MAX \
  /ULTRAL

echo "# NFS IRONMAN" >> /etc/fstab
echo "172.20.10.1:/IRONMAN                        /IRONMAN           nfs 	 _netdev,nofail,x-systemd.automount,x-systemd.requires=network-online.target,x-systemd.device-timeout=10 0 0" >> /etc/fstab 
echo "172.20.10.1:/IRONMAN1                       /IRONMAN1          nfs     _netdev,nofail,x-systemd.automount,x-systemd.requires=network-online.target,x-systemd.device-timeout=10 0 0" >> /etc/fstab 
echo "172.20.10.1:/IRONMAN2                       /IRONMAN2          nfs     _netdev,nofail,x-systemd.automount,x-systemd.requires=network-online.target,x-systemd.device-timeout=10 0 0" >> /etc/fstab
echo "172.20.10.1:/IRONMAN3                       /IRONMAN3          nfs     _netdev,nofail,x-systemd.automount,x-systemd.requires=network-online.target,x-systemd.device-timeout=10 0 0" >> /etc/fstab
echo "172.20.10.1:/IRONMAN4                       /IRONMAN4          nfs     _netdev,nofail,x-systemd.automount,x-systemd.requires=network-online.target,x-systemd.device-timeout=10 0 0" >> /etc/fstab
echo "172.20.10.1:/IRONMAN5                       /IRONMAN5          nfs     _netdev,nofail,x-systemd.automount,x-systemd.requires=network-online.target,x-systemd.device-timeout=10 0 0" >> /etc/fstab
echo "172.20.10.1:/IRONMAN6                       /IRONMAN6          nfs     _netdev,nofail,x-systemd.automount,x-systemd.requires=network-online.target,x-systemd.device-timeout=10 0 0" >> /etc/fstab
echo "172.20.10.1:/IRONMAN20                      /IRONMAN20         nfs     _netdev,nofail,x-systemd.automount,x-systemd.requires=network-online.target,x-systemd.device-timeout=10 0 0" >> /etc/fstab
echo "172.20.10.1:/IRONMAN22                      /IRONMAN22         nfs     _netdev,nofail,x-systemd.automount,x-systemd.requires=network-online.target,x-systemd.device-timeout=10 0 0" >> /etc/fstab
echo "172.20.10.1:/IRONMAN30                      /IRONMAN30         nfs     _netdev,nofail,x-systemd.automount,x-systemd.requires=network-online.target,x-systemd.device-timeout=10 0 0" >> /etc/fstab
echo " " >> /etc/fstab
echo "# NFS JARVIS" >> /etc/fstab
echo "172.20.20.10:/JARVIS1                       /JARVIS1          nfs     _netdev,nofail,x-systemd.automount,x-systemd.requires=network-online.target,x-systemd.device-timeout=10 0 0" >> /etc/fstab
echo "172.20.20.10:/JARVIS2                       /JARVIS2          nfs     _netdev,nofail,x-systemd.automount,x-systemd.requires=network-online.target,x-systemd.device-timeout=10 0 0" >> /etc/fstab
echo " " >> /etc/fstab
echo "# NFS JARICHO" >> /etc/fstab
echo "172.20.20.70:/JERICHO1                      /JERICHO1         nfs     _netdev,nofail,x-systemd.automount,x-systemd.requires=network-online.target,x-systemd.device-timeout=10 0 0" >> /etc/fstab
echo "172.20.20.70:/WORKSPACE                     /WORKSPACE        nfs     _netdev,nofail,x-systemd.automount,x-systemd.requires=network-online.target,x-systemd.device-timeout=10 0 0" >> /etc/fstab
echo "172.20.20.70:/DOWNLOADS                     /DOWNLOADS        nfs     _netdev,nofail,x-systemd.automount,x-systemd.requires=network-online.target,x-systemd.device-timeout=10 0 0" >> /etc/fstab
echo " " >> /etc/fstab
echo "# NFS MAX" >> /etc/fstab
echo "172.20.40.20:/Users/tony/MAX                /MAX              nfs     _netdev,nofail,x-systemd.automount,x-systemd.requires=network-online.target,x-systemd.device-timeout=10 0 0" >> /etc/fstab
echo " " >> /etc/fstab
sudo systemctl daemon-reload
sudo mount -a
