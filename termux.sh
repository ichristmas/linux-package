#######################
# install it yourself #
#######################
# apt update
# apt install -y openssh git
# sshd
# passwd
# bash linux-package/termux.sh



[ $(whoami) != "root" ] && WHO=termux || WHO=nethunter

if [ $WHO == "termux" ]; then

    # open storage
    termux-setup-storage

    # update and install program
    apt update
    apt install -y git curl unzip vim nmap tmux php python2 python unrar figlet htop jq libcurl
    python2 -m pip install -U pip

    #fix path python
    cp ~/../usr/bin/python2 ~/../usr/bin/python

    # install nodejs
    apt install -y nodejs
    npm install -g live-server
    sed -i 's/#!\/usr\/bin\/env.*/#!\/data\/data\/com.termux\/files\/usr\/bin\/node/' ~/../usr/lib/node_modules/live-server/live-server.js

    # config vim
    echo 'set nu' >> ~/.vimrc
    echo 'set tabstop=4' >> ~/.vimrc
    echo 'set autoindent' >> ~/.vimrc
    echo 'set background=dark' >> ~/.vimrc

    # youtube-dl
    curl -L https://yt-dl.org/downloads/latest/youtube-dl -o ~/../usr/bin/youtube-dl
    chmod +x ~/../usr/bin/youtube-dl
    sed -i 's/#!\/usr\/bin\/env.*/#!\/data\/data\/com\.termux\/files\/usr\/bin\/python/' ~/../usr/bin/youtube-dl

    # youtube-mp3
    echo "IyEvZGF0YS9kYXRhL2NvbS50ZXJtdXgvZmlsZXMvdXNyL2Jpbi9weXRob24KCmltcG9ydCBvcwppbXBvcnQgc3lzCgppZiBsZW4oc3lzLmFyZ3YpICE9IDI6CglwcmludCAieW91dHViZS1tcDMgPHVybD4iCglleGl0KCkKCm9zLnN5c3RlbSgneW91dHViZS1kbCAtLWV4dHJhY3QtYXVkaW8gLS1hdWRpby1mb3JtYXQgbXAzICInICsgc3lzLmFyZ3ZbMV0gKyAnIicpCg==" | base64 -d | tee ~/../usr/bin/youtube-mp3
    chmod +x ~/../usr/bin/youtube-mp3

    mkdir pentest

    # install sqlmap
    git clone https://github.com/sqlmapproject/sqlmap.git ~/pentest/sqlmap
    sed -i 's/#!\/usr.*/#!\/data\/data\/com.termux\/files\/usr\/bin\/python/' ~/pentest/sqlmap/sqlmap.py
    ln -s ~/pentest/sqlmap/sqlmap.py ~/../usr/bin/sqlmap
    chmod +x ~/../usr/bin/sqlmap

    # install metasploit-framework
    # git clone https://github.com/Hax4us/Metasploit_termux.git
    # bash Metasploit_termux/metasploit.sh
    # rm -rf Metasploit_termux

    # Nethunter-In-Termux
    curl https://raw.githubusercontent.com/Hax4us/Nethunter-In-Termux/master/kalinethunter > ~/kalinethunter
    chmod +x ~/kalinethunter
    ~/./kalinethunter
    rm ~/kalinethunter
    cp ~/linux-package/termux.sh ~/kali-arm64/root/

    # install zsh and oh my zsh
    apt install -y zsh
    echo 'sshd' >> ~/.bashrc
    echo 'zsh' >> ~/.bashrc
    echo 'clear' >> ~/.zshrc
    echo 'figlet christmas' >> ~/.zshrc
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    
elif [ $WHO == "nethunter" ]; then

    wget https://http.kali.org/kali/pool/main/k/kali-archive-keyring/kali-archive-keyring_2018.1_all.deb
    apt install ./kali-archive-keyring_2018.1_all.deb

    apt update
    apt install -y aptitude figlet ffmpeg unrar unzip htop traceroute curl jq lolcat cmatrix p7zip-full net-tools xclip

    ################
    # network tools
    apt install -y tcpdump netcat netcat-traditional nmap arp-scan tor

    ###################
    # wireless hacking
    apt install -y aircrack-ng

    ###################
    # network sniiffer
    apt install -y mitmf dsniff bettercap sslstrip

    ####################
    # web hacking tools
    apt install -y joomscan libswitch-perl wpscan dnsmap recon-ng dirbuster dirb httrack exploitdb sublist3r webshells sslscan sqlmap

    ##################
    # android pentest
    apt install -y apktool

    ################
    # exploit tool
    apt install -y metasploit-framework

    ###########
    # cracking
    apt install -y john wordlists findmyhash hash-identifier hashcat ocl-icd-libopencl1 hydra

    #################
    # forensic tools
    apt install -y exiftool


fi