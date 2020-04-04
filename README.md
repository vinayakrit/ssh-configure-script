# ssh-configure-script

This Script will automatically configure your Secure Shell. You dont need to work on complex command. Also after work it can set everything to its default, to do that you have to choose option make it default.


setup : 
  
  Run command :  chmod +x ssh.sh
    
  Run command : sudo ./ssh.sh


Note: If it not work try to reboot your system, in somecases on installation of openssh server system need to be rebooted.
This will work on linux (debian package manager). I try on ubuntu 18.04, work successfully.

Or you can set ssh manually also using this commands
$ sudo apt update

$ sudo apt-get install openssh-server 

$ sudo systemctl status ssh

$ sudo ufw allow ssh

$ ifconfig

// check for you ip
	

$ ssh your-name@your-ip

$ sudo systemctl stop ssh

$ sudo systemctl disable ssh
