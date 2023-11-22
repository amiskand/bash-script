#! /usr/bin/bash



#permission to execute this file (do this once then comment it out with a # sign)
chmod u+x sshkeycopy.sh

ansy=--yes
user=userNameOnOtherEnd
port=22
ipaddr=127.0.0.1

#generate the key
ssh-keygen 
#press enter
#enter passphrase

#copy key to server
ssh-copy-id -p port $user@ipaddr

#your account, server ip and port number
ssh $user@ipaddr -p port  "chmod 700 ~/.ssh && chmod 600 ~/.ssh/authorized_keys"

