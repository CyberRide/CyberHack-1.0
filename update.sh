#!/bin/bash
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

if [[ "$(id -u)" -ne 0 ]]; then
  echo -e "${RED}Unable To Start CyberHack, Are You Rooted? "
  exit 1
fi

function main() {
        echo "Complete!"
        exit 1
}


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

clear

sudo chmod +x /etc/

clear

sudo chmod +x /usr/share/doc

clear

sudo rm -rf /usr/share/doc/cyberhack/

clear

cd /etc/

clear

sudo rm -rf /etc/cyberhack

clear

mkdir cyberhack

clear

cd cyberhack

clear

git clone https://github.com/Z4nzu/cyberhack.git

clear

cd cyberhack

clear

sudo chmod +x install.sh

clear

./install.sh

clear
