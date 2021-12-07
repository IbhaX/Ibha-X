##Sweet-Terminal
tytr(){
    tput setaf 2 &>/dev/null # green powaaa
    for ((i=0; i<=${#1}; i++)); do
        printf '%s' "${1:$i:1}"
        sleep 0.0$((RANDOM % 3))
    done
    tput sgr0 2 &>/dev/null
}

clear

    fortune | cowsay -f eyes | lolcat -p 1
    tytr "[+]-[Hello Albi...]" | lolcat -p 1
    echo -e "\n"
    tytr "[+]-[Checking Internet Connection....]" | lolcat -p 1
    echo -e "\n"

if ping -q -c 1 -W 1 google.com >/dev/null 2>1; then

    tytr "[+]-[Internet Connection]...[ ACTIVE ]" | lolcat -p 1
    echo -e "\n"
    tytr "[+]-[Packages Updating....]" | lolcat -p 1
    pkg update -y &> /dev/null 2>&1 | pkg upgrade -y &> /dev/null 2>&1
    echo -e "\n"
    tytr "[+]-[Packages Updated....]" | lolcat -p 1

clear

else
    echo -e "\n"
    tytr "[+]-[No Internet Connection...]" | lolcat -p 1
    echo -e "\n"
    tytr "[+]-[Package Updation Failed...]" | lolcat -p 1
    sleep 0.3
    echo -e "$default"
    echo ""
fi

clear

fortune | cowsay -f `ls /data/data/com.termux/files/usr/share/cows | shuf -n 1` | lolcat -p 1

PS1="\e[1;32m┌─(\[\e[96m\]\j\[\e[91m\])─\e[34m(\e[0;36mKiraa\e[34m@\e[0;36mIbha-X\e[;36m)\e[91m-{\e[1;32m\w\e[91m}\e[1;32m\n|\n\e[34m└─(\[\e[91m\]\e[1;36m\W\[\e[34m\])\e[37m\e[0m  "
