#!/bin/bash
apt-get update
cd $HOME/steamcmd
$HOME/steamcmd.sh +force_install_dir $HOME/dontstarvetogether_dedicated_server +login anonymous +app_update 343050 validate +quit