#!/system/bin/bash

clear

cd

pkg update -y && pkg upgrade -y

termux-setup-storage

declare -a packages=("cmatrix" "ncurses-utils" "ruby" "fortune" "cowsay" "termux-tools" "termux-api" "git" "php" "perl" "python" "python2" "wget" "curl")

for i in "${packages[@]}"; do
    if ! dpkg-query -W -f='${Status}' $i 2>/dev/null | grep -q "ok installed"; then
        echo "$i is not installed, Installing now..."
            pkg install "$i" -y
    else
        echo "The $i package has already been installed."
    fi
done

pip install lolcat

    cd
    cd IbhaX
    cp m1rx ~/bin
    sudo nano ~/.bashrc
    export PATH="/data/data/com.termux/files/home/bin:$PATH"
    source ~/.bashrc
    timeout 5s m1rx

    mkdir tools
    cd tools
git clone https://github.com/Albiahbii/cupp
git clone https://github.com/Albiahbii/XLR8_BOMBER
git clone https://github.com/albiahbi/TBOMB-version-2.0
git clone https://github.com/Albiahbii/PhishMailer
git clone https://github.com/Albiahbii/Scylla
git clone https://github.com/xHak9x/SocialPhish

clear

read -p " Do you want to install IbhaX Shell in Termux?(Yes/No) : " input

if [[ $input == Yes || $input == yes || $input == y || $input == Y ]]; then
    clear
    cd
    cd IbhaX
    cp default $HOME/backup
    cd /data/data/com.termux/files/usr/etc
    cp bash.bashrc $HOME/backup
    cd /data/data/com.termux/files/usr/etc
    rm -rf motd
    rm -rf bash.bashrc
    cd $HOME/IbhaX
    cp bash.bashrc /data/data/com.termux/files/usr/etc
    cd 
    mkdir backup
    mkdir bin
    export PATH=~/bin:$PATH
    cd .termux
    cp termux.properties $HOME/backup
    rm -rf $HOME/termux.properties
    cd
    cd IbhaX
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
