#!/bin/bash
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
#########################
[[ ! -f /usr/bin/git ]] && apt install git -y &> /dev/null
# COLOR VALIDATION
clear
y='\033[1;93m'
c="\033[0;36m"
g="\e[92;1m"
r="\033[1;31m"
NC='\e[0m'
gray="\e[1;30m"
Blue="\033[1;36m"
GREEN='\033[0;32m'
grenbo="\033[1;95m"
yell='\e[33m'
BGX="\033[42m"
END='\e[0m'
bc="\e[5;36m"
ungu='\033[0;35m'
Green_background="\033[42;37m"
Red_background="\033[41;37m"
Suffix="\033[0m"
NC='\e[0m'
dayleft=$(( ($d1 - $d2) / 86400 ))

#MYIP=$(curl -sS ipv4.icanhazip.com)
#data_ip="https://raw.githubusercontent.com/LunaticTunnel/permission/_/ipme"
#SELLER=$(curl -sS $data_ip | grep $MYIP | awk '{print $2}')
#Exp=$(curl -sS $data_ip | grep $MYIP | awk '{print $3}')
#d2=$(date -d "$date_list" +"+%s")
#d1=$(date -d "$Exp" +"+%s")
#Setup="https://raw.githubusercontent.com/LunaticTunnel/XDG/_/"
#checking_sc() {
#useexp=$(wget -qO- $data_ip | grep $MYIP | awk '{print $3}')
#if [[ $date_list < $useexp ]]; then
#echo -ne
#else
#echo -e "${y}────────────────────────────────────────────${NC}"
#echo -e "\033[42m          404 NOT FOUND AUTOSCRIPT          ${NC}"
#echo -e "${y}────────────────────────────────────────────${NC}"
#echo -e ""
#echo -e "            ${r}PERMISSION DENIED !${NC}"
#echo -e "   ${yell}Your VPS${NC} $MYIP ${yell}Has been Banned${NC}"
#echo -e "     ${yell}Buy access permissions for scripts${NC}"
#echo -e "             ${yell}Contact Admin :${NC}"
#echo -e "      ${g}WhatsApp${NC} wa.me/6282240074362"
#echo -e "${y}────────────────────────────────────────────${NC}"
#exit 0
#fi
#}
#checking_sc

TOKEN="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"
REPO="https://github.com/LunaticTunnel/permission.git"
EMAIL="scpribadi293@gmail.com"
USER="LunaticTunnel"
KEY="6892032065:AAGAQIcgIvF79rXsSuqhTN6I5yx9UWi1sUI"
CHATID="5548605787"

function lane() {
echo -e "${bc} ————————————————————————————————————————${NC}"
}
############# MENU ADD IP ###########
TIMES="10"
URL="https://api.telegram.org/bot$KEY/sendMessage"
today=`date -d "0 days" +"%Y-%m-%d"`
git clone ${REPO} /root/ipme/ &> /dev/null
clear
echo -e ""
echo -e ""
lane
echo -e "\033[96;1m    INPUT YOUR IP VPS \033[0m"
lane
echo -e ""
read -p "INPUT IP VPS : " ip
CLIENT_EXISTS=$(grep -w $ip /root/ipme/ip | wc -l)
if [[ ${CLIENT_EXISTS} == '1' ]]; then
echo "IP Already Exist !"
exit 0
fi
echo -e ""
   # read -p "  Input Username IP (Example : Fvstore) : " name
name=F6EPQtYeJ3DmRZaL`</dev/urandom tr -dc A-Z0-9 | head -c4`
echo -e ""
clear
echo -e " ${r} Sett Waktu Expired${NC}"
echo -e "  ${y} 1.${NC}${c} 30 Days${NC}"
echo -e "  ${y} 2.${NC}${c} 60 Days${NC}"
echo -e "  ${y} 3.${NC}${c} 90 Days${NC}"
echo -e "  ${y} 4.${NC}${c} Lifetime${NC}"
echo -e "  ${y} 5.${NC}${c} Custom Expiration Date${NC}"
echo -e ""
read -p "Select Number 1 - 5 : " exp

if [[ ${exp} == '1' ]]; then
exp2=`date -d "30 days" +"%Y-%m-%d"`
echo "### ${name} ${exp2} ${ip}" >> /root/ipme/ip
elif [[ ${exp} == '2' ]]; then
exp2=`date -d "60 days" +"%Y-%m-%d"`
echo "### ${name} ${exp2} ${ip}" >> /root/ipme/ip
elif [[ ${exp} == '3' ]]; then
exp2=`date -d "90 days" +"%Y-%m-%d"`
echo "### ${name} ${exp2} ${ip}" >> /root/ipme/ip
elif [[ ${exp} == '4' ]]; then
exp2=`date -d "360 days" +"%Y-%m-%d"`
echo "### ${name} ${exp2} ${ip}" >> /root/ipme/ip
elif [[ ${exp} == '5' ]]; then
read -p "Input Expired Days : " exp11
exp2=`date -d "$exp11 days" +"%Y-%m-%d"`
echo "### ${name} ${exp2} ${ip}" >> /root/ipme/ip
fi
cd /root/ipme
git config --global user.email "${EMAIL}" &> /dev/null
git config --global user.name "${USER}" &> /dev/null
rm -rf .git &> /dev/null
git init &> /dev/null
git add . &> /dev/null
git commit -m register &> /dev/null
git branch -M main &> /dev/null
git remote add origin https://github.com/LunaticTunnel/ipme
git push -f https://${TOKEN}@github.com/${USER}/ipme.git &> /dev/null
rm -rf /root/ipme
clear
sleep 1
echo "  Registering IP Address..."
sleep 1
echo "  Processing..."
sleep 1
echo "  Done!"
sleep 1
clear
TEXT="
<code>───────────────────────────</code>
<code>   SUCCESS REGISTERED IP VPS</code>
<code>───────────────────────────</code>
<code>USERNAME       : $name</code>
<code>IP Address     : $ip</code>
<code>Registered On  : $today</code>
<code>Expired On     : $exp2</code>
<code>───────────────────────────</code>
"
clear
lane
echo -e "${g}         SUCCESS ADD IP VPS      $NC"
lane
echo -e "${y}  USERNAME   :${NC}${yell} $name ${NC}"
echo -e "${y}  IP ADDRESS :${NC}${yell} $ip ${NC}"
echo -e "${y}  REGISTERED :${NC}${yell} $today ${NC}"
echo -e "${y}  EXPIRED ON :${NC}${yell} $exp2 ${NC}"
lane

curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
clear
lane
echo -e " $bc User Reseller :${NC}${r} $SELLER"$NC
echo -e " $bc Exp Reseller  :${NC}${r} $Exp ${y}(${g} $dayleft ${y})"$NC
lane
cd
