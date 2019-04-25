#!/bin/bash
apt-get update
sudo apt-get install -y libstdc++6:i386 libgcc1:i386 libcurl4-gnutls-dev:i386
mkdir $HOME/steamcmd
cd $HOME/steamcmd
wget -P $HOME/steamcmd/ https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
tar -xvzf $HOME/steamcmd/steamcmd_linux.tar.gz
bash ./steamcmd.sh +force_install_dir $HOME/dontstarvetogether_dedicated_server +login anonymous +app_update 343050 validate +quit

git clone https://github.com/328333982/Dontstarvetogether_Dedicated_Server.git
cp -R ./Dontstarvetogether_Dedicated_Server/. $HOME/

chmod u+x $HOME/run_dedicated_servers.sh
