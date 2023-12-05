sudo dnf install -y p7zip-plugins
cd ~
curl https://raw.githubusercontent.com/puneetsl/lotion/master/setup.sh > notionSetup.sh
chmod +x notionSetup.sh
./notionSetup.sh native
rm notionSetup.sh
