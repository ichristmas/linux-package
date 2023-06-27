######################
# update and upgrade #
######################

sudo apt update
sudo apt -y upgrade
sudo apt -y autoremove

###############
# install zsh #
###############

sudo apt install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sed -i 's/# export PATH/export PATH/' ~/.zshrc

# install font zsh
git clone https://github.com/powerline/fonts.git
./fonts/install.sh
rm -rf fonts


# install powerlevel9k
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
wget https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/Hack/Regular/HackNerdFont-Regular.ttf
xdg-open 'HackNerdFont-Regular.ttf'
sed -i 's/^ZSH_THEME=.*/ZSH_THEME="powerlevel9k\/powerlevel9k"\
export TERM="xterm-256color"\
POWERLEVEL9K_MODE="nerdfont-complete"\
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND="245"\
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND="black"\
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0\
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=\(time command_execution_time dir vcs \)\
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=\(\)\
/' ~/.zshrc

# install sh-autosuggestions plugin for zsh
# add in .zsh
# plugins=(git zsh-autosuggestions)
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions

# config terminal
# background-color: #222222
# font-size: 10
# font-style: hack Regular


###################
# general program #
###################

sudo apt install -y aptitude figlet kazam vlc keepass2 ffmpeg unrar unzip htop traceroute dkms gnome-system-tools acpitool curl lm-sensors lolcat cmatrix p7zip-full xpad net-tools gnome-tweaks xclip xfce4-terminal nestopia


# install youtube-dl
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod +x /usr/local/bin/youtube-dl

echo "IyEvdXNyL2Jpbi9weXRob24KCmltcG9ydCBvcwppbXBvcnQgc3lzCgppZiBsZW4oc3lzLmFyZ3YpICE9IDI6CglwcmludCgieW91dHViZS1tcDMgPHVybD4iKQoJZXhpdCgpCgpvcy5zeXN0ZW0oJ3lvdXR1YmUtZGwgLS1leHRyYWN0LWF1ZGlvIC0tYXVkaW8tZm9ybWF0IG1wMyAiJyArIHN5cy5hcmd2WzFdICsgJyInKQo=" | base64 -d | sudo tee /usr/local/bin/youtube-mp3
sudo chmod +x /usr/local/bin/youtube-mp3

echo "IyEvdXNyL2Jpbi9weXRob24KCmltcG9ydCBvcwppbXBvcnQgc3lzCgoKaWYgbGVuKHN5cy5hcmd2KSAhPSA0OgoJcHJpbnQoInlvdXR1YmUtdWRlbXkgPHVzZXJuYW1lPiA8cGFzc3dvcmQ+IDx1cmw+IikKCWV4aXQoKQoKdXNlcm5hbWUgPSBzeXMuYXJndlsxXQpwYXNzd29yZCA9IHN5cy5hcmd2WzJdCnVybCA9IHN5cy5hcmd2WzNdCgpvcy5zeXN0ZW0oJ3lvdXR1YmUtZGwgLXUgIicgKyB1c2VybmFtZSArICciIC1wICInICsgcGFzc3dvcmQgKyAnIiAtbyAiJShjaGFwdGVyX251bWJlcilzLSUoY2hhcHRlcilzLyUoYXV0b251bWJlcilzLSUodGl0bGUpcy4lKGV4dClzIiAiJyArIHVybCArICciICcpCg==" | base64 -d | sudo tee /usr/local/bin/youtube-udemy
sudo chmod +x /usr/local/bin/youtube-udemy

echo "IyEvdXNyL2Jpbi9weXRob24zCgppbXBvcnQgcmUKaW1wb3J0IG9zCmltcG9ydCBzeXMKaW1wb3J0IHJlcXVlc3RzCgpkZWYgZ2V0VXJsSW1hZ2UodXJsKToKICByZXEgPSByZXF1ZXN0cy5nZXQodXJsKQogIHVybF9pbWFnZSA9IHJlLmZpbmRhbGwoJ2lzcGxheV91cmwiOiIoLiopIiwiZGlzcGxheV9yZXNvdXJjZXMnLCByZXEudGV4dClbMF0ucmVwbGFjZSgiXFx1MDAyNiIsIiYiKQogIHJldHVybiB1cmxfaW1hZ2UKCmlmIHN5cy5hcmd2WzFdID09ICctZCc6CiAgZmlsZU5hbWUgPSByZS5zZWFyY2goJyhbYS16LTAtOVxfXStcLmpwZyknLCBnZXRVcmxJbWFnZShzeXMuYXJndlsyXSkpWzBdCiAgb3Muc3lzdGVtKCd3Z2V0ICInK2dldFVybEltYWdlKHN5cy5hcmd2WzJdKSsnIiAtTyAnK2ZpbGVOYW1lKQplbHNlOgogIG9zLnN5c3RlbSgnZ29vZ2xlLWNocm9tZSAiJytnZXRVcmxJbWFnZShzeXMuYXJndlsxXSkrJyInKQo=" | base64 -d | sudo tee /usr/local/bin/ig
sudo chmod +x /usr/local/bin/ig

# install scrcpy for mobile
sudo snap install scrcpy


###################
# developer tools #
###################

sudo apt install -y git whois python3-pip hexedit filezilla sqlite3 vim tmux
sudo apt install -y build-essential gcc g++ gcc-multilib make automake
sudo apt install -y default-jdk

# install with snap
sudo snap install postman
sudo snap install hub --classic


# install ngrok
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip ngrok-stable-linux-amd64.zip
rm -rf ngrok-stable-linux-amd64.zip
sudo mv ngrok /usr/local/bin


# install heroku
curl https://cli-assets.heroku.com/install-ubuntu.sh | sh


# config vim
echo "
set nu
set tabstop=4
set autoindent
set background=dark" | sudo tee -a /etc/vim/vimrc


# config tmux
echo "
source-file "${HOME}/.tmux-themepack/powerline/block/cyan.tmuxtheme"
set -g @plugin 'jimeh/tmux-themepack'
set -g @themepack 'powerline/block/cyan'" | sudo tee ~/.tmux.conf


# set vim to editor default
echo 'export EDITOR=vim' >> ~/.zshrc


# add alias
echo 'alias c="xclip -selection clipboard"' >> ~/.zshrc
echo 'alias open="xdg-open"' >> ~/.zshrc
echo 'alias curltor="curl -x socks://127.0.0.1:9050"' >> ~/.zshrc
echo 'cdd () { for i in $(seq 1 1 "$1"); do cd ..; done }' >> ~/.zshrc


####################
# ubuntu extension #
####################

# multi-monitors-add-on
git clone https://github.com/realh/multi-monitors-add-on.git
cd multi-monitors-add-on
cp -r multi-monitors-add-on@spin83 ~/.local/share/gnome-shell/extensions/
cd ..
rm -rf multi-monitors-add-on

# Uptime-Indicator
git clone https://github.com/Gniourf/Uptime-Indicator.git
cd Uptime-Indicator
make install
cd ..
rm -rf Uptime-Indicator

# CpuMemInfo
wget https://extensions.gnome.org/extension-data/CpuMemInfo%40xesnet.fr.v12.shell-extension.zip
unzip CpuMemInfo@xesnet.fr.v12.shell-extension.zip -d ~/.local/share/gnome-shell/extensions/CpuMemInfo@xesnet.fr
rm -rf CpuMemInfo@xesnet.fr.v12.shell-extension.zip

# alt+f2 r
# press button windows and search extensions


######################
# install web server #
######################

sudo add-apt-repository -y ppa:ondrej/php
sudo add-apt-repository -y ppa:ondrej/apache2

sudo apt install -y apache2 libapache2-mod-php
sudo apt install -y php php-zip php-curl
sudo apt install -y mysql-server
sudo apt install -y phpmyadmin

# wget phpmyadmin
unzip phpMyAdmin*
rm  -rf phpMyAdmin*.zip
sudo mv /usr/share/phpmyadmin /usr/share/phpmyadmin_bak
sudo mv phpMyAdmin* /usr/share/phpmyadmin

sudo chmod -R 777 /var/www/html
rm /var/www/html/index.html
echo "<?php phpinfo(); ?>" > /var/www/html/phpinfo.php

# config apache2 allow acesss 127.0.0.1
cat <<EOF > "/var/www/html/.htaccess"
order allow,deny
allow from 127.0.0.1
EOF

sudo a2enmod rewrite
sudo systemctl restart apache2
## /etc/apache2/sites-available/000-default.conf
# <Directory /var/www/html>
#         Options Indexes FollowSymLinks MultiViews
#         AllowOverride All
#         Require all granted
# </Directory>
sudo sed -i 's/<\/VirtualHost>/    <Directory \/usr\/share\/phpmyadmin>\
        Options Indexes FollowSymLinks MultiViews\
        AllowOverride All\
        Require all granted\
    <\/Directory>\
    <Directory \/var\/www\/html>\
        Options Indexes FollowSymLinks MultiViews\
        AllowOverride All\
        Require all granted\
    <\/Directory>\
<\/VirtualHost>/' /etc/apache2/sites-available/000-default.conf
sudo systemctl restart apache2


#### create mysql user
# CREATE USER '<user>'@'localhost' IDENTIFIED BY '<password>';
# GRANT ALL PRIVILEGES ON * . * TO '<user>'@'localhost';
# FLUSH PRIVILEGES;

# config password mysql-server version 8.0.x
# ALTER user 'root'@'localhost' identified with mysql_native_password by '<PASSWORD>';
echo '[mysqld]
default_authentication_plugin=mysql_native_password
collation_server=utf8_general_ci
character_set_server = utf8' | sudo tee -a /etc/mysql/my.cnf



#########################
# install php framework #
#########################

# install composer
sudo wget https://getcomposer.org/composer.phar -O /usr/local/bin/composer
sudo chmod +x /usr/local/bin/composer

# install laravel
composer global require "laravel/installer"
echo 'export PATH=$PATH:$HOME/.config/composer/vendor/bin' >> ~/.zshrc



################################
# install javascript framework #
################################

# install node.js
sudo snap install node --classic #--channel=14

mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
echo 'export PATH="$PATH:$HOME/.npm-global/bin"' >> ~/.zshrc

npm i --location=global live-server
npm i --location=global serve
npm i --location=global eslint
npm i --location=global nodemon
npm i --location=global yarn

# curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
# echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
# sudo apt update && sudo apt install -y yarn

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
echo 'export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"' >> ~/.zshrc
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm' >> ~/.zshrc
nvm install 14
nvm alias default system


##################
# install golang #
##################
wget https://go.dev/dl/go1.18.3.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1*
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.zshrc
curl -sSfL https://raw.githubusercontent.com/cosmtrek/air/master/install.sh | sh -s



##################
# install docker #
##################
sudo apt install -y ca-certificates curl gnupg lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin


sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

sudo curl -L "https://github.com/docker/compose/releases/download/v2.10.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose


#################
# hacking tools #
#################

# add sources.list kali
# sudo apt-key adv --keyserver pgp.mit.edu --recv-keys ED444FF07D8D0BF6
# echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" | sudo tee /etc/apt/sources.list
wget -q -O - https://archive.kali.org/archive-key.asc  | sudo apt-key add
# echo "deb http://mirror1.ku.ac.th/kali kali-rolling main contrib non-free" | sudo tee -a /etc/apt/sources.list
echo "deb http://http.kali.org/kali kali-rolling main non-free contrib" | sudo tee -a /etc/apt/sources.list
sudo cp /etc/apt/trusted.gpg /etc/apt/trusted.gpg.d/
sudo apt update



################
# network tools
sudo apt install -y tcpdump wireshark netcat netcat-traditional nmap arp-scan tor putty proxychains

# config tor change ip every 1hr
sudo echo "MaxCircuitDirtiness 36000" >> /etc/torrc

# install wrk
git clone https://github.com/wg/wrk.git && cd wrk && make && sudo make install && cd ~
sudo mv ~/wrk /usr/share/
sudo ln -s /usr/share/wrk/wrk /usr/bin/



###################
# wireless hacking
sudo apt install -y aircrack-ng reaver mdk3 wifite

## requirement wifite
sudo apt install -y  bully libssl-dev libcurl4-openssl-dev zlib1g-dev macchanger
git clone https://github.com/ZerBea/hcxdumptool.git && cd hcxdumptool && make && sudo make install && cd ~ && rm -rf hcxdumptool
git clone https://github.com/ZerBea/hcxtools.git && cd hcxtools && make && sudo make install && cd ~ && rm -rf hcxtools



###################
# network sniiffer
sudo apt install -y dsniff bettercap



####################
# web hacking tools
sudo apt install -y joomscan libswitch-perl wpscan dnsmap recon-ng dirbuster dirb httrack exploitdb sublist3r sslscan sqlmap

# burpsuite
unzip *.jar
sudo mkdir /usr/share/burpsuite
sudo mv ~/Downloads/*.jar /usr/share/burpsuite
sudo chmod +x /usr/share/burpsuite/*.jar
echo "java -jar /usr/share/burpsuite/*.jar" | sudo tee "/usr/share/burpsuite/run.sh"
sudo chmod +x /usr/share/burpsuite/run.sh
sudo ln -s /usr/share/burpsuite/run.sh /usr/bin/burpsuite

sudo cp ~/Downloads/resources/Media/icon64.png /usr/share/burpsuite
rm -rf *

# fixed burpsuite SSL secure connect failed
# sudo update-alternatives --config java
# sudo update-alternatives --config javac
# sudo update-alternatives --config javaws


##################
# android pentest
sudo apt install -y apktool



################
# exploit tool
sudo apt install -y metasploit-framework



###########
# cracking
sudo apt install -y john wordlists hash-identifier hashcat ocl-icd-libopencl1 hydra

# cap2hccapx
sudo git clone https://github.com/hashcat/hashcat-utils.git /usr/share/hashcat-utils
sudo make -C /usr/share/hashcat-utils/src
sudo ln -s /usr/share/hashcat-utils/src/cap2hccapx.bin /usr/bin/cap2hccapx



#################
# forensic tools
sudo apt install -y exiftool



#################
# Config System #
#################

########################
# config name interface
sudo sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT=".*"/GRUB_CMDLINE_LINUX_DEFAULT="quiet splash net.ifnames=0"/' /etc/default/grub
sudo update-grub



#################
# disable apport
echo "enabled=0" | sudo tee /etc/default/apport



##########################################################
# fix "E: Could not get lock /var/lib/dpkg/lock-frontend"
sudo rm -rf /var/lib/dpkg/lock-frontend
sudo rm /var/lib/apt/lists/lock
sudo rm /var/cache/apt/archives/lock
sudo rm /var/lib/dpkg/lock
sudo dpkg --configure -a



# config git
git config --global user.name "ichristmas"
git config --global user.email christmas.hack9@gmail.com
git config --global --add hub.host MY.GIT.ORG
git config --global hub.protocol ssh
git config --global push.default current
git config --global pull.rebase false
# git config --global pull.ff only

ssh-keygen -t rsa -b 4096 -C ""
cat .ssh/id_rsa.pub|c

# config time dual boot
timedatectl set-local-rtc 1

# config display
sudo cvt 1920 1080
sudo xrandr --newmode "1920x1080_60.00"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
sudo xrandr --addmode LVDS-1 "1920x1080_60.00"

echo "
xrandr --newmode "1920x1080_60.00"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
xrandr --addmode LVDS-1 "1920x1080_60.00"
" >> ~/.profile

# key sleep
systemctl suspend
