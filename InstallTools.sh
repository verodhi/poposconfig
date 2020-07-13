# Run as root 'sudo su'

# Apt operations
apt -y update
apt -y upgrade
apt -y autoremove
apt -y install flatpak snapd muon exfat-fuse exfat-utils gnome-tweak-tools timeshift flameshot hugo bluetooth bluez bluez-tools rfkill blueman
apt -y remove firefox libreoffice-common libreoffice-core docker
apt -y update
apt -y autoremove

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install -y flathub
flatpak install -y org.mozilla.firefox
flatpak install -y com.obsproject.Studio
flatpak install -y org.remmina.Remmina
flatpak install -y org.libreoffice.LibreOffice
flatpak install -y org.gimp.GIMP
flatpak install -y org.blender.Blender
flatpak install -y org.videolan.VLC
flatpak install -y org.inkscape.Inkscape
flatpak install -y com.getpostman.Postman
flatpak install -y org.darktable.Darktable
flatpak install -y flathub org.gnome.Extensions
#flatpak install -y com.visualstudio.code

flatpak install -y com.microsoft.Teams
flatpak install -y com.slack.Slack
flatpak install -y com.discordapp.Discord
flatpak install -y org.gnome.DejaDup
flatpak install -y com.uploadedlobster.peek
flatpak install -y com.jgraph.drawio.desktop
flatpak install -y org.gnome.clocks
flatpak install -y com.github.tchx84.Flatseal
flatpak install -y org.wireshark.Wireshark

# Games
flatpak install -y org.gnome.Mines
flatpak install -y com.valvesoftware.Steam
flatpak install -y org.godotengine.Godot
flatpak install -y org.gnome.Chess

# Snap packages
snap install snap-store chromium
snap install code --classic

# Install Docker
apt remove docker docker-engine docker.io containerd runc
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
groupadd docker
gpasswd -a $USER docker
usermod -aG docker $USER

apt -y install docker-ce docker-ce-cli containerd.io

# Install python packages

apt -y install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6
# wget https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh
# bash Anaconda3-2020.02-Linux-x86_64.sh

# Install jupyter notebook
conda install -y -c conda-forge jupyterlab

# Install Anki Web
#wget https://github.com/ankitects/anki/releases/download/2.1.26/anki-2.1.26-linux-amd64.tar.bz2
#cd $HOME/Downloads
#tar xjf anki-2.1.26-linux-amd64.tar.bz2
#cd anki-2.1.26-linux-amd64
#make install
#cd $HOME/Downloads
#rm -r anki-2.1.26-linux-amd64
#rm anki-2.1.26-linux-amd64.tar.bz2

# Note taking app
wget -O - https://raw.githubusercontent.com/laurent22/joplin/master/Joplin_install_and_update.sh | bash

apt -y update
apt -y upgrade
apt -y autoremove

# Install Open JDK
#apt -y purge openjdk-\*
#apt -y install openjdk-11-jre openjdk-11-jdk

# Install Oracle Java for work
#add-apt-repository -y ppa:linuxuprising/java
#apt -y update
#apt -y install oracle-java14-installer
