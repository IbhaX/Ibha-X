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

    cd
    mkdir tools
    cd tools
    git clone https://github.com/Albiahbii/cupp
    git clone https://github.com/Albiahbii/XLR8_BOMBER
    git clone https://github.com/albiahbi/TBOMB-version-2.0
    git clone https://github.com/Albiahbii/PhishMailer
    git clone https://github.com/Albiahbii/Scylla
    git clone https://github.com/xHak9x/SocialPhish

    clear

read -p " Do you want to install IbhaX Theme in Termux?(Yes/No) : " input

if [[ $input == Yes || $input == yes || $input == y || $input == Y ]]; then
    clear
    cd
    cd Ibha-X
    mkdir .backup
    cd /data/data/com.termux/files/usr/etc
    cp default $HOME/Ibha-X/.backup
    cp bash.bashrc $HOME/Ibha-X/.backup
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
