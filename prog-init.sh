
echo "\n package update\n********\n"
sudo apt update

echo "--> screen\n*\n"
sudo apt -y install screen 
 
echo "--> zsh\n*\n"
sudo apt -y install zsh 

echo "--> oh-my-zsh\n*\n"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


# DOCKER
echo "\n DOCKER \n********\n"
sudo apt -y install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
echo "--> removing old docker\n*\n"
sudo apt -y remove docker docker-engine docker.io containerd runc
echo "--> importing gpg key\n*\n"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" | sudo tee /etc/apt/sources.list.d/docker.list

echo "--> package update\n*\n"
sudo apt update
echo "--> installing docker\n*\n"
sudo apt -y install docker-ce docker-ce-cli containerd.io
echo "--> adding user to docker group\n*\n"
sudo usermod -aG docker $USER
newgrp docker
echo "--> checking docker version\n*\n"
docker version









