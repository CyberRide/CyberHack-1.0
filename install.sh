!/bin/bashd


BLACK='\e[30m'
RED='\e[31m'
GREEN='\e[92m'
YELLOW='\e[33m'
ORANGE='\e[93m'
BLUE='\e[34m'
PURPLE='\e[35m'
CYAN='\e[36m'
WHITE='\e[37m'
NC='\e[0m'
purpal='\033[35m'


clear

echo -e "${ORANGE}"
echo ""
echo "
░█████╗░██╗░░░██╗██████╗░███████╗██████╗░██╗░░██╗░█████╗░░█████╗░██╗░░██╗
██╔══██╗╚██╗░██╔╝██╔══██╗██╔════╝██╔══██╗██║░░██║██╔══██╗██╔══██╗██║░██╔╝
██║░░╚═╝░╚████╔╝░██████╦╝█████╗░░██████╔╝███████║███████║██║░░╚═╝█████═╝░
██║░░██╗░░╚██╔╝░░██╔══██╗██╔══╝░░██╔══██╗██╔══██║██╔══██║██║░░██╗██╔═██╗░
╚█████╔╝░░░██║░░░██████╦╝███████╗██║░░██║██║░░██║██║░░██║╚█████╔╝██║░╚██╗
░╚════╝░░░░╚═╝░░░╚═════╝░╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚═╝░╚════╝░╚═╝░░╚═╝

Made by: CyberRide
github: https://github.com/CyberRide
";

echo -e "${GREEN}"
echo "Do you want to install the CyberHack hacking tool? (y/n)"
echo -n -e "${BLUE}CyberHack >>${NC} "
read choice
INSTALL_DIR="/usr/share/doc/cyberhack"
BIN_DIR="/usr/bin/"
if [ $choice == y ]; then
        echo "[*] Checking Internet Connection ..."
	wget -q --tries=10 --timeout=20 --spider https://google.com
	if [[ $? -eq 0 ]]; then
	    echo -e ${WHITE}"[✔] Loading ... "
	    sudo apt-get update
	    sudo apt-get install python-pip
            sudo apt install python3-pip
            echo "[✔] Checking directories..."
	    if [ -d "$INSTALL_DIR" ]; then
	        echo "[!] A Directory CyberHack Was Found.. Do You Want To Replace It ? [y/n]:" ;
	        read input
	        if [ "$input" = "y" ]; then
	            rm -R "$INSTALL_DIR"
	        else
	            exit
	        fi
	    fi
                echo "[✔] Installing ...";
	    echo "";
            sudo mkdir /usr/share/doc/cyberhack
	    sudo cp -r index.sh  modules "$INSTALL_DIR";
	    echo "#!/bin/bash
	    sudo bash $INSTALL_DIR/index.sh" '${1+"$@"}' > cyberhack;
	    sudo chmod +x cyberhack;
	    sudo cp cyberhack /usr/bin/;
	    rm cyberhack;
	    echo ""; 
            echo "[✔] Trying to installing Requirements ..."
            sudo apt install net-tools
		sudo pip3 install lolcat
		sudo apt-get install -y figlet
		sudo pip3 install boxes
		sudo apt-get install boxes
		sudo pip3 install flask
		sudo pip3 install requests
                sudo pip install discord_webhook 
                sudo pip install requests
                sudo pip install colorama
                sudo pip install plyer
                sudo pip install discord.py
                sudo pip install discord
                sudo pip install selenium
                sudo pip install beautifulsoup4
                sudo pip install Pillow
                sudo pip install pywebcopy
                sudo pip install PyAutoGUI
                sudo pip install pyperclip
                sudo pip install aiohttp
                sudo pip install pypresence
                sudo pip install pyinstaller
                sudo pip install dhooks
                sudo pip3 install discord_webhook 
                sudo pip3 install requests
                sudo pip3 install colorama
                sudo pip3 install plyer
                sudo pip3 install discord.py
                sudo pip3 install discord
                sudo pip3 install selenium
                sudo pip3 install beautifulsoup4
                sudo pip3 install Pillow
                sudo pip3 install PyAutoGUI
                sudo pip3 install pyperclip
                sudo pip3 install aiohttp
                sudo pip3 install pypresence
                sudo pip3 install pyinstaller
                sudo pip3 install dhooks
                sudo pip3 install pexpect
                sudo pip3 install --pre scapy[basic]
		clear
if [ -d "$INSTALL_DIR" ]; then
        echo "";
        echo "[✔] Successfuly Installed !!! ";
        echo "";
        echo "";
        echo -e $ORANGE "		[+]+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++[+]"
        echo 		"		[+]						      		[+]"
        echo -e $ORANGE  "		[+]     ✔✔✔ Now Just Type In Terminal (cyberhack) ✔✔✔ 	[+]"
        echo 		"		[+]						      		[+]"
        echo -e $ORANGE "		[+]+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++[+]"
    else
        echo "[✘] Installation Failed !!! [✘]";
        exit
    fi
elif [ $choice -eq 0 ];
then
    echo -e $RED "[✘] THank Y0u !! [✘] "
    exit
else 
    echo -e $RED "[!] Select Valid Option [!]"
fi
fi
