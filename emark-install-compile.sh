#!/usr/bin/env bash

if ! [ $(id -u) = 0 ]; then
   echo "Are you root?"
   echo "https://www.nullsoul.pw/"
   exit 1
fi


sudo apt-get install git
git clone https://github.com/emarkproject/eMark.git
apt-get install qt5-default
sudo apt-get install qt5-qmake
apt-get install qt5-default qt5-qmake qtbase5-dev-tools qttools5-dev-tools \
        build-essential libboost-dev libboost-system-dev \
        libboost-filesystem-dev libboost-program-options-dev libboost-thread-dev \
        libssl-dev libdb++-dev libminiupnpc-dev
cd eMark*
qmake
make
