#!/bin/bash
#TOR BROWSER QUICK-INSTALL SCRIPT BY:Jhorensma
clear && printf '\e[3J'
printf "\033[32;1mTOR BROWSER QUICK-INSTALL SCRIPT \033[0m\n"
printf "\033[32;1mBY: Jhorensma \033[0m\n"
echo
options=("64bit" "32bit")
select opt in "${options[@]}"
do
    case $opt in
"64bit")
printf "\033[32;1mFOR 64bit SYSTEM: \033[0m\n"
cd ~
temp="$(curl -s https://www.torproject.org/download/)"; temp2=`echo "${temp}" | grep -E -o '[A-Za-z0-9/_.-]+[.]tar.xz' | head -n 1 | sed 's/..//'`; wget -O tor-browser-linux64.tar.xz "$temp2"; tar xvfJ tor-browser-linux64.tar.xz; rm tor-browser-linux64.tar.xz; sudo mv tor-browser*/Browser/ /opt/; rm -rf tor-browser*; sed -i 's/id -u/echo 1/' /opt/Browser/start-tor-browser; chown -hR root /opt/Browser/
echo
echo
printf "\033[32;1mPRESS ENTER TO CLOSE \033[0m\n"
read
exit

;;
"32bit")
printf "\033[32;1mFOR 32bit SYSTEM: \033[0m\n"
cd ~
temp="$(curl -s https://www.torproject.org/download/)"; temp2=`echo "${temp}" | grep -E -o '[A-Za-z0-9/_.-]+[.]tar.xz' | head -n 1 | sed 's/..//'`; wget -O tor-browser-linux32.tar.xz "$temp2"; tar xvfJ tor-browser-linux32.tar.xz; rm tor-browser-linux32.tar.xz; sudo mv tor-browser*/Browser/ /opt/; rm -rf tor-browser*; sed -i 's/id -u/echo 1/' /opt/Browser/start-tor-browser; chown -hR root /opt/Browser/
echo
echo
printf "\033[32;1mPRESS ENTER TO CLOSE \033[0m\n"
read
exit

;;
*) echo "invalid option $REPLY";;
    esac
done
