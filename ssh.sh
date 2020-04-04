
#!/bin/sh
sol="yes"
BLUE='\033[0;34m'
Yellow='\033[1;33m'
cyan='\033[0;36m'
NC='\033[0m' # No Color

echo "${NC}what is your name? ${Yellow}"

read name
echo "${NC}"
echo "What is your ip,  ${Yellow} $name?"
read ip
echo "your ip ${Yellow} $ip "

echo "${cyan}"
sudo apt-get install openssh-server	   # first_command  to install openssh-server
sudo systemctl start ssh        # second_command  to start ssh 
echo "\n"
echo "\n"
echo "\n"

sudo systemctl enable ssh	   # third_command to enable ssh

 #sudo ufw status	   # fourth_command to check ufw status

sudo ufw allow ssh	   # fifth

echo "\n"
echo "\n"

sudo systemctl restart ssh	    # eighth

first () {
gnome-terminal --  ssh $name@$ip
 }  

wait
second () {
echo "${NC}do you want make it default (yes/no)  ${Yellow}" 
read ans

echo "${cyan}"
if [ $sol = $ans ]
then
sudo systemctl stop ssh
sudo systemctl disable ssh
echo "\n"
echo "\n"
sudo ufw deny ssh

echo "\n"
echo "\n"

echo " ${BLUE} we just closed all service & make it default as it was before exicuting this code"


else 
echo "service not closed"

fi

echo "For more visit https://github.com/vinayakrit"
}

first 

 second
