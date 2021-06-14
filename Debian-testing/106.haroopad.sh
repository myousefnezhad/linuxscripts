#!/bin/bash
cd /home/common/programs/haroopad
sudo cp -r ./usr /
sudo cp -rf ./usr/share/icons/hicolor/ /usr/share/icons/hicolor
cd control
sudo ./postinst
