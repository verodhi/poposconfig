# Run as root 'sudo su'

# Apt operations
apt -y update
apt -y upgrade
apt -y autoremove
apt -y install flatpak snapd muon exfat-fuse exfat-utils gnome-tweak-tool timeshift flameshot hugo bluetooth bluez bluez-tools rfkill stacer
apt -y remove firefox libreoffice-common libreoffice-core docker geary
apt -y update
apt -y autoremove

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
# flatpak remote-add --if-not-exists gnome-nightly https://nightly.gnome.org/gnome-nightly.flatpakrepo

flatpak install -y flathub
flatpak install -y flathub org.mozilla.firefox
flatpak install -y flathub com.obsproject.Studio
flatpak install -y flathub org.remmina.Remmina
flatpak install -y flathub org.libreoffice.LibreOffice
flatpak install -y flathub org.gimp.GIMP
flatpak install -y flathub org.blender.Blender
flatpak install -y flathub org.videolan.VLC
flatpak install -y flathub org.inkscape.Inkscape
flatpak install -y flathub com.getpostman.Postman
flatpak install -y flathub org.darktable.Darktable
flatpak install -y flathub org.gnome.Extensions
flatpak install -y flathub org.telegram.desktop
#flatpak install -y flathub org.keepassxc.KeePassXC
#flatpak install -y com.visualstudio.code

flatpak install -y flathub com.microsoft.Teams
flatpak install -y flathub com.slack.Slack
flatpak install -y flathub com.discordapp.Discord
flatpak install -y flathub org.gnome.DejaDup
flatpak install -y flathub com.uploadedlobster.peek
flatpak install -y flathub com.jgraph.drawio.desktop
flatpak install -y flathub org.gnome.clocks
flatpak install -y flathub com.github.tchx84.Flatseal
flatpak install -y flathub org.wireshark.Wireshark
flatpak install -y flathub org.audacityteam.Audacity
flatpak install -y flathub com.github.wwmm.pulseeffects
flatpak install -y flathub org.kde.kdenlive

# Games
flatpak install -y flathub org.gnome.Mines
flatpak install -y flathub com.valvesoftware.Steam
flatpak install -y flathub org.godotengine.Godot
flatpak install -y flathub org.gnome.Chess
flatpak install -y flathub org.kde.digikam
# flatpak install -y flathub org.gnome.Shotwell
# flatpak install -y gnome-nightly org.gnome.NautilusDevel

# Snap packages
snap install snap-store chromium mailspring keepassxc
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

# Install rclone
curl https://rclone.org/install.sh | bash
# Install Brave Browser

curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
apt update
apt install brave-browser

# Configure keepassxc
curl https://raw.githubusercontent.com/keepassxreboot/keepassxc/master/utils/keepassxc-snap-helper.sh | bash
# wget https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh
# bash Anaconda3-2020.02-Linux-x86_64.sh

# Install jupyter notebook
#conda install -y -c conda-forge jupyterlab

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
# wget -O - https://raw.githubusercontent.com/laurent22/joplin/master/Joplin_install_and_update.sh | bash

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
