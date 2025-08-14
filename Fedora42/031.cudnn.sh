wget https://developer.download.nvidia.com/compute/cudnn/9.8.0/local_installers/cudnn-local-repo-rhel9-9.8.0-1.0-1.x86_64.rpm -O ~/cudnn-local-repo-rhel9-9.8.0-1.0-1.x86_64.rpm
sudo rpm -i ~/cudnn-local-repo-rhel9-9.8.0-1.0-1.x86_64.rpm
sudo dnf clean all
sudo dnf -y install cudnn-cuda-12
rm ~/cudnn-local-repo-rhel9-9.8.0-1.0-1.x86_64.rpm
