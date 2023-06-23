#!/bin/bash

mkdir -p ~/.config/systemd/user

ln -sf /home/common/install/jupyter/jupyter.service  ~/.config/systemd/user/jupyter.service

sudo loginctl enable-linger tony

systemctl --user enable jupyter.service

systemctl --user start jupyter.service
