#!/bin/bash
#sudo ln -sf /home/common/install/easyfmri.sh /etc/profile.d/easyfmri.sh

echo "# Startup Script" >>  ~/.bashrc
echo "source /home/common/install/startupscript.sh" >>  ~/.bashrc

echo "# Common bin dir" >>  ~/.bashrc
echo 'export PATH="/home/common/bin:/var/lib/snapd/snap/bin:$PATH"' >>  ~/.bashrc


 echo "# Startup Script" >>  ~/.zshrc
 echo "source /home/common/install/zstartupscript.sh" >>  ~/.zshrc

 echo "# Common bin dir" >>  ~/.zshrc
 echo 'export PATH="/home/common/bin:/var/lib/snapd/snap/bin:$PATH"' >>  ~/.zshrc


ln -sf /home/common/install/startupscript.sh $HOME/.startupscript
ln -sf /home/common/install/zstartupscript.sh $HOME/.zstartupscript

