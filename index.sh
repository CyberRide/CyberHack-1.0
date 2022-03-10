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

echo -e "
${CYAN}Spoofer Tools    Network Analysis      Scanner Tools                 SSH / FTP              Other${GREEN}
--------------------------------------------------------------------------------------------------------------------
 ${WHITE}[1]${GREEN} ArpSpoofer  ${WHITE}[7]${GREEN} Network Scanner ${WHITE}[10]${GREEN} PortScanner             ${WHITE}[13]${GREEN} Anonymous Login    ${WHITE}[16]${GREEN} Directory Discover
 ${WHITE}[2]${GREEN} FtpSniffer  ${WHITE}[8]${GREEN} Fake AP         ${WHITE}[11]${GREEN} Retrieve Banner         ${WHITE}[14]${GREEN} SSH Brute          ${WHITE}[17]${GREEN} Wifi Stealer
 ${WHITE}[3]${GREEN} HttpSniffer ${WHITE}[9]${GREEN} Packet Analyzer ${WHITE}[12]${GREEN} Vulnerability Scanner   ${WHITE}[15]${GREEN} Ftp Brute          ${WHITE}[18]${GREEN} Website Code copier                      ${WHITE}[4]${GREEN} MacChanger                                                                           ${WHITE}[19]${GREEN} About Us                                 ${WHITE}[5]${GREEN} MacSniffer
 ${WHITE}[6]${GREEN} SynFlooder                                                                                                                                                                                                               
---------------------------------------------------------------------------------------------------------------------
${NC}";

echo -n -e "${BLUE}Bl4nk >>${NC} "
read choice

if [ $choice == 1 ]; then
cd modules
sudo python3 arpSpoofer.py
sleep 5
cd -
sudo bash index.sh
fi

if [ $choice == 2 ]; then
cd modules
sudo python3 ftpSniffer.py
sleep 5
cd -
sudo bash index.sh
fi

if [ $choice == 3 ]; then
cd modules
sudo python3 httpSniffer.py
sleep 
cd -
sudo bash index.sh
fi

if [ $choice == 4 ]; then
cd modules
sudo python3 macChanger.py
sleep 
cd -
sudo bash index.sh
fi

if [ $choice == 5 ]; then
cd modules
sudo python3 macSniffer.py
sleep 
cd -
sudo bash index.sh
fi

if [ $choice == 6 ]; then
cd modules
sudo python3 synFlooder.py
sleep 
cd -
sudo bash index.sh
fi

if [ $choice == 7 ]; then
echo -e "${RED}[!] This Tool Will Only Work On Operating Systems With Wlan0 (Kali Linux, Parrot Os etc.) Do You Want To Continue? (y/n)"
echo -n -e "${BLUE}Bl4nk >>${NC} "
read choice
if [ $choice == y ]; then
echo "Loading..."
echo -ne '#####                     (33%)\r'
sleep 1
echo -ne '#############             (66%)\r'
sleep 1
echo -ne '#######################   (100%)\r'
echo -ne '\n'
echo "Done!!!"
sleep 2
clear
cd modules
echo -e "${RED}[!] This Tool Needs Monitoring Mode Enabled To Work, Do You Want To Enable Monitoring Mode? (y/n)"
echo -n -e "${BLUE}Bl4nk >>${NC} "
read choice 
if [ $choice == y ]; then
sudo ifconfig wlan0 down
sudo iwconfig wlan0 mode monitor
sudo ifconfig wlan0 up
echo -e "${GREEN}[*] Monitoring Mode Enabled Successfully !!!"
sleep 2
python3 wifi-scanner.py
else
    echo -e "${RED}Exiting ..."
sleep 2
cd -
sudo bash main.sh
fi
fi
fi

if [ $choice == 8 ]; then
echo -e "${RED}[!] This Tool Will Only Work On Operating Systems With Wlan0 (Kali Linux, Parrot Os etc.) Do You Want To Continue? (y/n)"
echo -n -e "${BLUE}Bl4nk >>${NC} "
read choice
if [ $choice == y ]; then
echo "Loading..."
echo -ne '#####                     (33%)\r'
sleep 1
echo -ne '#############             (66%)\r'
sleep 1
echo -ne '#######################   (100%)\r'
echo -ne '\n'
echo "Done!!!"
sleep 2
clear
cd modules
clear
sudo python3 FakeAP.py
else
    cd -
    sudo bash main.sh
fi
fi

if [ $choice == 9 ]; then
cd modules
sudo python3 packetAnalyzer.py
sleep 
cd -
sudo bash index.sh
fi

if [ $choice == 10 ]; then
cd modules
sudo python3 advancedPortScanner.py
sleep 
cd -
sudo bash index.sh
fi

if [ $choice == 11 ]; then
cd modules
sudo python3 retrieveBanner.py
sleep 
cd -
sudo bash index.sh
fi

if [ $choice == 12 ]; then
cd modules
sudo python3 vulnerabilityScanner.py Vulnerability.txt
sleep 
cd -
sudo bash index.sh
fi

if [ $choice == 13 ]; then
cd modules
sudo python3 anonymousLogin.py
sleep 
cd -
sudo bash index.sh
fi

if [ $choice == 14 ]; then
cd modules
sudo python3 sshBrute.py
sleep 
cd -
sudo bash index.sh
fi

if [ $choice == 15 ]; then
cd modules
sudo python3 ftpBrute.py
sleep 
cd -
sudo bash index.sh
fi

if [ $choice == 16 ]; then
cd modules
sudo python3 directoryDiscover.py
sleep 
cd -
sudo bash index.sh
fi

if [ $choice == 17 ]; then
cd modules
sudo python3 wifiStealer.py
sleep 
cd -
sudo bash index.sh
fi

if [ $choice == 18 ]; then
cd modules
sudo python3 copier.py
sleep 
cd -
sudo bash index.sh
fi

if [ $choice == 19 ]; then
echo -e "${GREEN}[*] This Tool Is Made For Education Purposes Only !!!
[*] This tool is actively being worked on !!!
[*] Developer: CyberRide
[*] GitHub:   https://github.com/CyberRide
[*] Facebook: https://facebook.com/CyberRide/"

sleep 15
sudo bash index.sh
fi
