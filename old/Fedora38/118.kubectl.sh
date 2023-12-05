cd ~
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
rm ~/kubectl
curl -sS https://webinstall.dev/k9s | bash


sudo mkdir -p /home/common/oh-my-zsh/custom/plugins/kubectl-autocomplete/
sudo kubectl completion zsh > /tmp/kubectl-autocomplete.plugin.zsh
sudo cp /tmp/kubectl-autocomplete.plugin.zsh /home/common/oh-my-zsh/custom/plugins/kubectl-autocomplete/kubectl-autocomplete.plugin.zsh
sudo mkdir -p /home/common/oh-my-zsh/completions
sudo curl -L https://raw.githubusercontent.com/ahmetb/kubectx/master/completion/kubectx.zsh -o /home/common/oh-my-zsh/completions/_kubectx.zsh
sudo curl -L https://raw.githubusercontent.com/ahmetb/kubectx/master/completion/kubens.zsh -o /home/common/oh-my-zsh/completions/_kubens.zsh

cd ~
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh
rm get_helm.sh
