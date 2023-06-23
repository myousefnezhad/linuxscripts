sudo apt update
sudo apt install -y linux-headers-amd64
sudo apt install -y nvidia-driver firmware-misc-nonfree
sudo dpkg --add-architecture i386 && sudo apt update
sudo apt install -y nvidia-driver-libs:i386
sudo apt install -y nvidia-cuda-dev nvidia-cuda-toolkit
