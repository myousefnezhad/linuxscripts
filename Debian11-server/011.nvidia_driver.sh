sudo apt update
sudo apt install linux-headers-amd64
sudo apt install nvidia-driver firmware-misc-nonfree
sudo dpkg --add-architecture i386 && sudo apt update
sudo apt install nvidia-driver-libs:i386
sudo apt install nvidia-cuda-dev nvidia-cuda-toolkit
