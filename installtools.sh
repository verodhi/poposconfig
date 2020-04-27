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

install -y snap-store firefox obs-studio chromium remmina libreoffice gimp gitkraken vlc fast postman darktable
install -y --classic code skype slack deja-dup atom dotnetcore-sdk
alias dotnet-sdk.dotnet dotnet

cd $HOME/Downloads

# Install VS Teams
wget -y https://teams.microsoft.com/downloads/desktopurl?env=production&plat=linux&arch=x64&download=true&linuxArchiveType=deb

# Install Anki Web
tar xjf Downloads/anki-2.1.20-amd64.tar.bz2
cd anki-2.1.20-linux-amd64
make install

# Install Dot Net Core
wget https://packages.microsoft.com/config/ubuntu/19.10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb