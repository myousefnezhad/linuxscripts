curl -1sLf \
  'https://dl.cloudsmith.io/public/balena/etcher/setup.rpm.sh' \
  | sudo -E bash

sudo dnf update
sudo dnf install -y balena-etcher-electron
