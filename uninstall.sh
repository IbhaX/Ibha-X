#!/system/bin/bash

read -p " Do you want to Uninstall Ibha Shell?(Yes/No) : " input

if [[ $input == Yes || $input == yes || $input == y || $input == Y ]]; then
    clear
    cd
    cd /data/data/com.termux/files/usr/etc
    rm -rf bash.bashrc
    cd $HOME/Ibha-X/.backup
    mv bash.bashrc /data/data/com.termux/files/usr/etc
    cd $HOME
    rm -rf Ibha-X
    echo -e "\e[1;91mSuccessfully Uninstalled"
    echo -e "Restart Termux"
    exit  3
elif [[ $input == No || $input == no || $input == n || $input == N ]]; then
exit 2
else
echo -e "\e[1;91mInvalid Option"
exit 1
fi
