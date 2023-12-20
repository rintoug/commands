# Adding the user
adduser rinto
#Adding the user to sudo group
usermod -aG sudo rinto

#Install docker
sudo apt update -y
sudo apt install apt-transport-https ca-certificates curl gnupg -y


curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker.gpg


echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker.gpg] https://download.docker.com/linux/debian bookworm stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update -y


sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin -y


sudo systemctl is-active docker


#Enabling Non-root Users to Run Docker Commands

sudo usermod -aG docker ${USER}

#need to logout and login again