sudo usermod -aG wheel tony
echo "tony    ALL=(ALL)  NOPASSWD:   ALL" >> /etc/sudoers.d/custom-user
EDITOR=vim visudo -f /etc/sudoers.d/custom-user
