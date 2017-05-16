#!/bin/bash

setxkbmap fi
sudo apt-get update
sudo apt-get -y install git puppet
git clone https://github.com/Stombahh/puppet.git
cd puppet
bash apply.sh
