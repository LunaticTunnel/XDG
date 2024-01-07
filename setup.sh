#!/bin/bash
clear
echo -e ""
echo -e ""
banner="\033[96;1m     SCRIPT AUTO INSTALL VPS    \033[0m"
banner="\033[96;1m              INSTALL SCRIPT   \033[0m"
line="\033[95;1m ──────────────────────────────────────────── \033[0m"
#
echo -ne """
              $line
                         $banner
              $line
     """
 echo -e ""
 echo -e "\033[93;1 wait in 4 sec....\033[0m"
 sleep 4
 clear
echo -ne """
             $line
                         $banner2
             $line
         """
         echo -e ""
              
# // INSTALL SCRIPTED
apt install -y && apt update -y && apt upgrade -y && apt install lolcat -y && gem install lolcat && wget -q https://raw.githubusercontent.com/LunaticTunnel/XDG/_/_____main_____/__.sh && chmod +x __.sh && ./__.sh
