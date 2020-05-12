# Get Admin mode
sudo su

# Apt operations
apt -y update
apt -y upgrade
apt -y autoremove
apt -y install snapd gnome-tweaks exfat-fuse exfat-utils
apt -y remove firefox libreoffice-common libreoffice-core

apt -y update
apt -y autoremove

snap install snap-store firefox obs-studio chromium remmina libreoffice gimp gitkraken vlc fast postman darktable teams-for-linux docker
snap install --classic code
snap install --classic skype
snap install --classic slack
snap install --classic deja-dup
snap install --classic atom
snap install ksnip

groupadd docker
gpasswd -a $USER docker

# Install Anki Web
wget https://github.com/ankitects/anki/releases/download/2.1.24/anki-2.1.24-linux-amd64.tar.bz2
tar xjf Downloads/anki-2.1.24-amd64.tar.bz2
cd anki-2.1.24-linux-amd64
make install
cd $HOME/Downloads
