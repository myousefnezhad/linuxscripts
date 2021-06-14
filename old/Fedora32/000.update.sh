sudo sed -i 's|installonly_limit=3|installonly_limit=8|g' /etc/dnf/dnf.conf
sudo echo "fastestmirror=True" >> /etc/dnf/dnf.conf 
cat /etc/dnf/dnf.conf
sudo dnf update -y
