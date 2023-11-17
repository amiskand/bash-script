#! /usr/bin/bash
# bash shell path
# bsh = $(which bash)


#permission to execute this file (do this once)
chmod u+x autoupdate.sh



#variables
ansy=--yes
#input argument stored
ansArg=$@
#package manager name
pm=apt



#create subshell
eval '$(sudo $pm update)'

#rest of commands in main shell
sudo $pm upgrade $ansy

echo "$ansArg"

sudo $pm autoremove $ansy

#uncomment below to auto-reboot after upgrade
#reboot
