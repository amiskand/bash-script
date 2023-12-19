#! /usr/bin/bash

#permission to execute this file (do this once then comment it out with a pound sign #)
chmod u+x selinux2.sh

#check the installation after the relabel
sudo check-selinux-installation

sestatus


#uncomment below
#setenforce 1
#reboot
