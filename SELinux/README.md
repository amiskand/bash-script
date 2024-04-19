# Readme
This only has been used on Systemd and Debian based systems with APT package manager.  The package names change overtime so if the packages give errors that they are not found then you need to do some digging into the new names of the packages.

# Instructions
* Run the selinux1 file then after the first reboot run the selinux2 file.

* If the output on the selinux2 file is empty then comment out line 7 with a pound sign (#) then  uncomment the last two commands on lines 13-14 then run the file again.

* After the second reboot run the selinux3 file to verify that SELinux is enabled and enforcing.

* The sedebug file aids in debugging issues by checking disk errors and creating logs.  This is just a starting point and is not meant to fix your SELinux system problems.  You can uncomment lines to run the commands. Run file as many times as you need to and comment and uncomment any lines to help you debug the problem.  Look in your home directory for audit2why.txt and local.te to help debug the issue.
