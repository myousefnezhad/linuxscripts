#!/bin/bash
sudo ln -sf /home/common/install/easyfmri.sh /etc/profile.d/easyfmri.sh

echo "# Startup Script" >>  ~/.bashrc
echo "source /home/common/install/startupscript.sh" >>  ~/.bashrc

echo "# Common bin dir" >>  ~/.bashrc
echo 'export PATH="/home/common/bin:$PATH"' >>  ~/.bashrc


ln -sf /home/common/install/startupscript.sh $HOME/.startupscript

