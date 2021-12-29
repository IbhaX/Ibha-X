#!/system/bin/bash

clear
cd
pkg update -y && pkg upgrade -y
termux-setup-storage

declare -a packages=("ruby" "cmatrix" "fortune" "cowsay")
 for i in "${packages[@]}"; do
    if ! dpkg-query -W -f='${Status}' $i 2>/dev/null | grep -q "ok installed"; then
        echo "$i is not installed, Installing now..."
            pkg install "$i" -y
    else
        echo "The $i package has already been installed."
    fi
 done


    cd
    wget https://github.com/busyloop/lolcat/archive/master.zip
    unzip master.zip
    cd lolcat-master/bin
    gem install lolcat
    cd
    cd Ibha-X && cp m1rx /data/data/com.termux/files/usr/bin

 htools () {

   cd
    mkdir tools
    cd tools
    git clone https://github.com/Albiahbii/cupp
    cd cupp
    chmod +x  cupp.py
    cd ..
    git clone https://github.com/Albiahbii/XLR8_BOMBER
    cd XLR8_BOMBER
    chmod +x xlr8.py
    cd ..
    git clone https://github.com/albiahbi/TBOMB-version-2.0
    cd TBOMB-version-2.0
    chmod +x TBomb.sh bomber.py
    pip install -r requirements.txt
    cd ..
    git clone https://github.com/Albiahbii/PhishMailer
    cd PhishMailer
    chmod +x PhishMailer.py
    cd ..
    git clone https://github.com/Albiahbii/Scylla
    cd Scylla
    chmod +x scylla.py
    python3 -m pip install -r requirements.txt
    cd ..
    git clone https://github.com/xHak9x/SocialPhish
    cd SocialPhish
    chmod +x socialphish.sh
    cd
    clear

}

htools


read -p " Do you want to install IbhaX Theme in Termux?(Yes/No) : " input

if [[ $input == Yes || $input == yes || $input == y || $input == Y ]]; then
    clear
    cd
    cd Ibha-X
    mkdir .backup
    cd /data/data/com.termux/files/usr/etc
    cp default $HOME/Ibha-X/.backup
    cp bash.bashrc $HOME/Ibha-X/.backup
    cd $HOME/Ibha-X
    cp .bashrc /data/data/com.termux/files/home
    cd
    source ~/.bashrc
    cd /data/data/com.termux/files/usr/etc
    rm -rf bash.bashrc
    rm -rf motd
    cd
    cd Ibha-X
    cp bash.bashrc /data/data/com.termux/files/usr/etc
    cd 
    cd .termux
    cp termux.properties $HOME/Ibha-X/.backup
    rm -rf termux.properties
    cd
    cd Ibha-X
    cp termux.properties $HOME/.termux
    cd
    clear
    echo -e "\e[1;91mSuccessfully Installed"
    echo -e "Restart Termux to view changes..."
    echo -e ""
    exit  3

elif [[ $input == No || $input == no || $input == n || $input == N ]]; then
exit 2
else
echo -e "\e[1;91mInvalid Option"
exit 1
fi
