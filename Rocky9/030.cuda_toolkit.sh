sudo dnf config-manager --add-repo https://developer.download.nvidia.com/compute/cuda/repos/rhel9/x86_64/cuda-rhel9.repo
sudo dnf clean all
sudo dnf module disable nvidia-driver
sudo dnf install epel-release -y
sudo dnf groupinstall "Development Tools" -y
sudo yum install libnccl-2.26.2-1+cuda12.8 libnccl-devel-2.26.2-1+cuda12.8 libnccl-static-2.26.2-1+cuda12.8
sudo dnf -y install cuda-toolkit
