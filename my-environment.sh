#!/bin/bash
FILENOW=""
echo "Let's get you back home sir \n Let's start with your shell"
sudo apt update && apt upgrade -y && install zsh libfuse2 -y;
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/' ~/.zshrc

echo 'alias dps="docker ps -a"' >> ~/.zshrc
echo 'alias dpon="docker ps"' >> ~/.zshrc
echo 'alias update="sudo apt update"' >> ~/.zshrc
echo 'alias upgrade="sudo apt upgrade -y"' >> ~/.zshrc
echo 'alias cls="clear"' >> ~/.zshrc
echo 'alias gpush="/home/icaro/Documents/code/shellScript/gpush.sh"' >> ~/.zshrc
echo 'alias deuruim="killall -3 gnome-shell"' >> ~/.zshrc
echo 'alias gacp="/home/icaro/Documents/code/shellScript/gacp.sh"' >> ~/.zshrc
echo 'alias dcon="docker compose up"' >> ~/.zshrc
echo 'alias dcof="docker compose down"' >> ~/.zshrc
echo 'alias drmi="docker container prune"' >> ~/.zshrc
echo 'alias ..="cd .."' >> ~/.zshrc
echo 'alias ...="cd ../.."' >> ~/.zshrc
echo 'alias ....="cd ../../.."'
echo 'alias updrade="/home/icaro/Documents/code/shellScript/updrade.sh"' >> ~/.zshrc

mkdir /home/icaro/Documents/code
mkdir /home/icaro/Documents/code/shellScript
wget https://raw.githubusercontent.com/icaro-bezerra/ShellLearn/main/gacp.sh -P /home/icaro/Documents/code/shellScript
wget https://github.com/icaro-bezerra/ShellLearn/blob/main/gpush.sh -P /home/icaro/Documents/code/shellScript
wget https://github.com/icaro-bezerra/ShellLearn/blob/main/updrade.sh -P /home/icaro/Documents/code/shellScript
echo "Now your dev tools"
sudo apt install tilix -y

wget "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"
FILENOW=$(find ./ -type f -name 'code*.deb' | head -n 1)
sudo dpkg -i "$FILENOW"
rm  "$FILENOW"
sudo apt install docker.io  -y

wget -c https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.27.3.14493.tar.gz
sudo tar -xzf jetbrains-toolbox-1.27.3.14493.tar.gz -C /opt

sudo apt install curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser -y


git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0

echo '. "$HOME/.asdf/asdf.sh"' >> ~/.zshrc

asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git

asdf install nodejs latest
echo "I've installed only your needs to dev and work sir, take care of your machine"
