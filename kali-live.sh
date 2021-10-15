passwd
cp /etc/apt/sources.list /etc/apt/sources.list.bak
echo "deb http://mirror1.ku.ac.th/kali kali-rolling main contrib non-free" > /etc/apt/sources.list
apt update
apt install -y fonts-thai-tlwg


# config ssh
service ssh start


# config vim
cat <<EOF >> ~/.vimrc
set nu
set tabstop=4
set autoindent
set background=dark
syntax on
EOF


# config terminal name
# echo "PS1='\[\033[01;31m\]it@morana\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]$ '" >> ~/.bashrc
echo "PS1='${debian_chroot:+($debian_chroot)}\[\033[01;31m\]it@morana\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '" >> ~/.bashrc


# change wallpaper
gsettings set org.gnome.desktop.background picture-uri file:///root/kali-live/image/bg.jpg


# downgrade java version for config brupsuite
update-alternatives --config java