sudo dnf install qemu-kvm libvirt-daemon libvirt-client bridge-utils virt-install virt-manager
sudo systemctl enable --now libvirtd
sudo usermod -aG libvirt,kvm tony
