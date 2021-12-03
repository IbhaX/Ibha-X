##Sweet-Terminal
matrix(){
    tput setaf 2 &>/dev/null # green powaaa
    for ((i=0; i<=${#1}; i++)); do
        printf '%s' "${1:$i:1}"
        sleep 0.0$((RANDOM % 3))
    done
    tput sgr0 2 &>/dev/null
}

clear

    fortune | cowsay -f eyes | lolcat -p 1
    matrix "[+]-[Hello Albi...]" | lolcat -p 1
    echo -e "\n"
    matrix "[+]-[Checking Internet Connection....]" | lolcat -p 1
    echo -e "\n"

if ping -q -c 1 -W 1 google.com >/dev/null 2>1; then

    matrix "[+]-[Internet Connection]...[ ACTIVE ]" | lolcat -p 1
    echo -e "\n"
    matrix "[+]-[Packages Updating....]" | lolcat -p 1
    pkg update -y &> /dev/null 2>&1 | pkg upgrade -y &> /dev/null 2>&1
    echo -e "\n"
    matrix "[+]-[Packages Updated....]" | lolcat -p 1

clear

else
    echo -e "\n"
    matrix "[+]-[No Internet Connection...]" | lolcat -p 1
    echo -e "\n"
    matrix "[+]-[Package Updation Failed...]" | lolcat -p 1
    sleep 0.3
    echo -e "$default"
    echo ""
fi

clear

fortune | cowsay -f `ls /data/data/com.termux/files/usr/share/cows | shuf -n 1` | lolcat -p 1

PS1='\[\e[91m\]┌─[\[\e[96m\]\#\[\e[91m\]]─\e[1;91m[\e[1;92mKiraa@IbhaX\e[1;91m]\e[0;91m-\e[1;91m[\e[1;92m\w\e[1;91m]\n|\n\e[0;91m└─[\[\e[91m\]\e[0;95m\W\[\e[91m\]]──►\e[1;93m  '
