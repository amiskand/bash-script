#! /usr/bin/bash

#permission to execute this file (do this once then comment it out with a pound sign #)
chmod u+x sedebug.sh

fsck -N

#find the root drive and replace the quotes and use without the quotes
#sudo tune2fs -c 1 "/dev/root"


sudo audit2why -la > audit2why.txt

sudo audit2allow -i /var/log/audit/audit.log --module local > local.te

#uncomment line below and enter file then change to FSCKFIX=yes
#sudo vim /etc/default/rcS

#uncomment line below and enter file then change to SELINUX=permissive
#sudo vim /etc/selinux/config

#sudo check-selinux-installation

#sestatus

#sudo semodule -i local.pp

#make -f /usr/share/selinux/devel/Makefile local.pp

#checkmodule -M -m -o local.mod local.te
#semodule_package -o local.pp -m local.mod
