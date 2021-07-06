#!/bin/bash
user=$(whoami)
if [ $user = "root" ];then
echo "You are root :)"
apt update && apt upgrade;
apt install openjdk-8-jdk bc bison build-essential ccache curl flex g++-multilib gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5 libncurses5-dev libsdl1.2-dev libssl-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev;
mkdir -p ~/bin/repo;
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo;
echo "# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi" >> ~/.profile;
else
echo "You are not root :("
sudo apt update && sudo apt upgrade;
sudo apt install openjdk-8-jdk bc bison build-essential ccache curl flex g++-multilib gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5 libncurses5-dev libsdl1.2-dev libssl-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev;
mkdir -p ~/bin/repo;
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo;
sudo mkdir -p /home/root/bin/repo;
sudo chmod 777 /home/root/bin/repo
sudo curl https://storage.googleapis.com/git-repo-downloads/repo > /home/root/bin/repo;
echo "# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi" >> ~/.profile;
echo "# set PATH so it includes user's private bin if it exists
if [ -d "/home/root/bin" ] ; then
    PATH="/home/root/bin:$PATH"
fi" >> ~/.profile;
fi
