#!/system/bin/bash

matrix(){
    tput setaf 2 &>/dev/null # green powaaa
    for ((i=0; i<=${#1}; i++)); do
        printf '%s' "${1:$i:1}"
        sleep 0.0$((RANDOM % 3))
    done
    tput sgr0 2 &>/dev/null
}


fortune | cowsay -f eyes | lolcat -p 1

read -p " Do you want to Uninstall Ibha Shell?(Yes/No) : " input

if [[ $input == Yes || $input == yes || $input == y || $input == Y ]]; then
    clear
    cd
    cd /data/data/com.termux/files/usr/etc
    rm -rf bash.bashrc
    cd $HOME/Ibha-X/.backup
    mv bash.bashrc default /data/data/com.termux/files/usr/etc
    cd
    cd .termux && rm -rf termux.properties
    cd && cd $HOME/Ibha-X/.backup
    mv termux.properties $HOME/.termux
    cd $HOME
    rm -rf Ibha-X
    matrix "Successfully Uninstalled" | lolcat
    matrix "Restart Termux" | lolcat
    exit  3
elif [[ $input == No || $input == no || $input == n || $input == N ]]; then
exit 2
else
echo -e "\e[1;91mInvalid Option"
exit 1
fi
