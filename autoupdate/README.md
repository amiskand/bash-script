# Readme
Read the instructions to know how to use and modify this bash script at least before running it for the first time.

This script auto-updates, auto-upgrades then autoremoves.  It can additionally auto-reboot.

This script has only been tested on linux variants that I have.  

It works on linux variants with APT package managers.  However, it does not work on red hat variants.

# Instructions
Change the path of the bash shell if it is different then the one set using the commmand on line 3 or running the command: which bash

The variables have their own sction denoted by #variables in the file and whitespace in between.

Change variable name pm to the package manager that your linux OS uses.

If you want to use the shell to enter a package manager each time then you can change the $ansy in lines 24 and 28 to $ansArg.

If you want to auto-reboot after the auto-upgrade just uncomment the last line.

After the first run uncomment line 7 by deleting the symbol: #

Finally, in the bash shell run the command: bash autoupdate.sh
