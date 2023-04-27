sudo dnf install -y cmake ncurses-devel git
cd /tmp
git clone https://github.com/Syllo/nvtop.git
mkdir -p nvtop/build && cd nvtop/build
cmake ..
make
sudo make install
