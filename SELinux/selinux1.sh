#! /usr/bin/bash

#permission to execute this file 
chmod u+x selinux1.sh

#update repo mirrors
sudo apt update

#remove conflicting linux security modules
sudo apt remove apparmor

#install SELinux packages
sudo apt install selinux-basics selinux-policy-default selinux-utils policycoreutils policycoreutils-python-utils auditd 

#activate SELinux
sudo selinux-activate

#reboot computer for changes to take effect and notice SElinux relabel the volume
reboot
