######################
# update and upgrade #
######################

sudo apt update
sudo apt -y upgrade
sudo apt -y autoremove



###################
# general program #
###################

sudo apt install -y aptitude figlet kazam vlc keepass2 ffmpeg unrar unzip htop traceroute dkms gnome-system-tools acpitool curl jq lm-sensors lolcat cmatrix p7zip-full xpad net-tools gnome-tweak-tool xclip xfce4-terminal nestopia
sudo apt-get install -y --no-install-recommends gnome-panel rdesktop
# gnome-desktop-item-edit --create-new ~/Desktop

# install youtube-dl
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod +x /usr/local/bin/youtube-dl

echo "IyEvdXNyL2Jpbi9weXRob24KCmltcG9ydCBvcwppbXBvcnQgc3lzCgppZiBsZW4oc3lzLmFyZ3YpICE9IDI6CglwcmludCgieW91dHViZS1tcDMgPHVybD4iKQoJZXhpdCgpCgpvcy5zeXN0ZW0oJ3lvdXR1YmUtZGwgLS1leHRyYWN0LWF1ZGlvIC0tYXVkaW8tZm9ybWF0IG1wMyAiJyArIHN5cy5hcmd2WzFdICsgJyInKQo=" | base64 -d | sudo tee /usr/local/bin/youtube-mp3
sudo chmod +x /usr/local/bin/youtube-mp3

echo "IyEvdXNyL2Jpbi9weXRob24KCmltcG9ydCBvcwppbXBvcnQgc3lzCgoKaWYgbGVuKHN5cy5hcmd2KSAhPSA0OgoJcHJpbnQoInlvdXR1YmUtdWRlbXkgPHVzZXJuYW1lPiA8cGFzc3dvcmQ+IDx1cmw+IikKCWV4aXQoKQoKdXNlcm5hbWUgPSBzeXMuYXJndlsxXQpwYXNzd29yZCA9IHN5cy5hcmd2WzJdCnVybCA9IHN5cy5hcmd2WzNdCgpvcy5zeXN0ZW0oJ3lvdXR1YmUtZGwgLXUgIicgKyB1c2VybmFtZSArICciIC1wICInICsgcGFzc3dvcmQgKyAnIiAtbyAiJShjaGFwdGVyX251bWJlcilzLSUoY2hhcHRlcilzLyUoYXV0b251bWJlcilzLSUodGl0bGUpcy4lKGV4dClzIiAiJyArIHVybCArICciICcpCg==" | base64 -d | sudo tee /usr/local/bin/youtube-udemy
sudo chmod +x /usr/local/bin/youtube-udemy

echo "IyEvdXNyL2Jpbi9weXRob24zCgppbXBvcnQgcmUKaW1wb3J0IG9zCmltcG9ydCBzeXMKaW1wb3J0IHJlcXVlc3RzCgpkZWYgZ2V0VXJsSW1hZ2UodXJsKToKICByZXEgPSByZXF1ZXN0cy5nZXQodXJsKQogIHVybF9pbWFnZSA9IHJlLmZpbmRhbGwoJ2lzcGxheV91cmwiOiIoLiopIiwiZGlzcGxheV9yZXNvdXJjZXMnLCByZXEudGV4dClbMF0ucmVwbGFjZSgiXFx1MDAyNiIsIiYiKQogIHJldHVybiB1cmxfaW1hZ2UKCmlmIHN5cy5hcmd2WzFdID09ICctZCc6CiAgZmlsZU5hbWUgPSByZS5zZWFyY2goJyhbYS16LTAtOVxfXStcLmpwZyknLCBnZXRVcmxJbWFnZShzeXMuYXJndlsyXSkpWzBdCiAgb3Muc3lzdGVtKCd3Z2V0ICInK2dldFVybEltYWdlKHN5cy5hcmd2WzJdKSsnIiAtTyAnK2ZpbGVOYW1lKQplbHNlOgogIG9zLnN5c3RlbSgnZ29vZ2xlLWNocm9tZSAiJytnZXRVcmxJbWFnZShzeXMuYXJndlsxXSkrJyInKQo=" | base64 -d | sudo tee /usr/local/bin/ig
sudo chmod +x /usr/local/bin/ig

# install scrcpy
sudo snap install scrcpy


###################
# developer tools #
###################

sudo apt install -y git whois python python-dev hexedit filezilla sqlite3 vim zsh tmux
curl https://bootstrap.pypa.io/get-pip.py --output get-pip.py
sudo python2 get-pip.py
rm -rf get-pip.py
sudo apt install -y build-essential gcc g++ gcc-multilib make automake
sudo apt install -y default-jdk
sudo apt install -y openjdk-8-jdk
sudo apt install -y linuxbrew-wrapper

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


# install oh-my-zsh and config
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sed -i 's/# export PATH/export PATH/' ~/.zshrc

# install font zsh
git clone https://github.com/powerline/fonts.git
./fonts/install.sh
rm -rf fonts


# install powerlevel9k
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf"
xdg-open 'Hack Regular Nerd Font Complete.ttf'
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
echo 'cdd () { for i in $(seq 1 1 "$1"); do cd ..; done }' >> ~/.zshrc


# terminal font: Hack, size: 10



####################
# ubuntu extension #
####################

# multi-monitors-add-on
git clone git://github.com/spin83/multi-monitors-add-on.git
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



###################
# IDE Prigramming #
###################

# install sublime text 3
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install -y sublime-text

# install vs code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update
sudo apt install -y code

# setting
# {
#     "beautify.language": {
#         "html": {
#             "type": ["html"],
#             "ext": ["vue", "php", "blade.php"]
#         }
#     },
#     "terminal.integrated.cursorBlinking": true,
#     "terminal.integrated.fontFamily": "Hack Nerd Font",
#     "emmet.includeLanguages": {
#         "javascript": "javascriptreact",
#     },
#     "emmet.triggerExpansionOnTab": true,
#     "workbench.iconTheme": "vscode-icons",
#     "powermode.enabled": true,
#     "powermode.enableShake": false,

#     "eslint.validate": [
#         {
#             "language": "vue",
#             "autoFix": true
#         },
#         {
#             "language": "javascript",
#             "autoFix": true
#         },
#         {
#             "language": "javascriptreact",
#             "autoFix": true
#         }
#     ],
#     "eslint.autoFixOnSave": true,
#     "window.zoomLevel": 0,
#     "editor.tabSize": 2,
#     "editor.codeActionsOnSave": {
#         "source.fixAll.eslint": true
#     },
#     "git.autofetch": true,
#     "git.enableSmartCommit": true
# } 

## keyboard
# [
#     {
#         "key": "ctrl+shift+b",
#         "command": "HookyQR.beautify",
#         "when": "editorFocus"
#     },
#     {
#         "key": "ctrl+shift+d",
#         "command": "editor.action.copyLinesDownAction",
#         "when": "editorTextFocus"
#     },
# ]

# vs code extenstion
code --install-extension formulahendry.auto-rename-tag
code --install-extension hookyqr.beautify
code --install-extension thekalinga.bootstrap4-vscode
code --install-extension zaczero.bootstrap-v4-snippets
code --install-extension formulahendry.code-runner
code --install-extension streetsidesoftware.code-spell-checker
code --install-extension andrew-codes.cypress-snippets
code --install-extension dart-code.dart-code
code --install-extension ms-azuretools.vscode-docker
code --install-extension dsznajder.es7-react-js-snippets
code --install-extension dbaeumer.vscode-eslint
code --install-extension amandeepmittal.expressjs
code --install-extension gurayyarar.expressjs-4-snippets
code --install-extension dart-code.flutter
code --install-extension alexisvt.flutter-snippets
code --install-extension eamodio.gitlens
code --install-extension idleberg.icon-fonts
code --install-extension zignd.html-css-class-completion
code --install-extension fivethree.vscode-ionic-snippets
code --install-extension xabikos.javascriptsnippets
code --install-extension donjayamanne.jquerysnippets
code --install-extension onecentlin.laravel-blade
code --install-extension austenc.laravel-blade-spacer
code --install-extension onecentlin.laravel5-snippets
code --install-extension christian-kohler.path-intellisense
code --install-extension felixfbecker.php-intellisense
code --install-extension kokororin.vscode-phpfmt
code --install-extension hoovercj.vscode-power-mode
code --install-extension esbenp.prettier-vscode
code --install-extension ms-python.python
code --install-extension jundat95.react-native-snippet
code --install-extension equimper.react-native-react-redux
code --install-extension xabikos.reactsnippets
code --install-extension octref.vetur
code --install-extension vscode-icons-team.vscode-icons
code --install-extension hollowtree.vue-snippets
code --install-extension vuetifyjs.vuetify-vscode



######################
# install web server #
######################

sudo add-apt-repository -y ppa:ondrej/php
sudo add-apt-repository -y ppa:ondrej/apache2

sudo apt install -y apache2 libapache2-mod-php
sudo apt install -y php php-zip php-curl
sudo apt install -y mysql-server
sudo apt install -y phpmyadmin

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
sed -i 's/export PATH=\$HOME\/bin:\/usr\/local\/bin:\$PATH/export PATH=\$HOME\/bin:\/usr\/local\/bin:\$PATH:\$HOME\/\.config\/composer\/vendor\/bin/' ~/.zshrc



################################
# install javascript framework #
################################

# install node.js
sudo snap install node --classic --channel=14

mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
sed -i 's/export PATH=\(.*\)/export PATH=\1:$HOME\/.npm-global\/bin/' ~/.zshrc

npm i -g @angular/cli
npm i -g create-react-app
npm i -g expo-cli
npm i -g @vue/cli
npm i -g live-server
npm i -g serve
npm i -g eslint
npm i -g nodemon

# sudo npm install -g pngquant-bin

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install -y yarn



##################
# install docker #
##################
sudo apt -y install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt -y install docker-ce docker-ce-cli containerd.io

sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

sudo curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose


#################
# hacking tools #
#################

# add sources.list kali
# sudo apt-key adv --keyserver pgp.mit.edu --recv-keys ED444FF07D8D0BF6
# echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" | sudo tee /etc/apt/sources.list
wget -q -O - https://archive.kali.org/archive-key.asc  | sudo apt-key add
echo "deb http://mirror1.ku.ac.th/kali kali-rolling main contrib non-free" | sudo tee -a /etc/apt/sources.list
sudo apt update



################
# network tools
sudo apt install -y tcpdump wireshark netcat netcat-traditional nmap arp-scan tor putty proxychains

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
sudo apt install -y joomscan libswitch-perl wpscan dnsmap recon-ng dirbuster dirb httrack exploitdb sublist3r webshells sslscan sqlmap

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


# config terminal
# background-color: #222222
# font-size: 10
# font-style: hack Regular

# config git
git config --global user.name "ichristmas"
git config --global user.email christmas.hack9@gmail.com
git config --global --add hub.host MY.GIT.ORG
git config --global hub.protocol ssh
git config --global push.default current

ssh-keygen -t rsa -b 4096 -C ""
cat .ssh/id_rsa.pub|c

# config display
sudo cvt 1920 1080
sudo xrandr --newmode "1920x1080_60.00"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
sudo xrandr --addmode LVDS-1 "1920x1080_60.00"

echo "
xrandr --newmode "1920x1080_60.00"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
xrandr --addmode LVDS-1 "1920x1080_60.00"
" >> ~/.profile