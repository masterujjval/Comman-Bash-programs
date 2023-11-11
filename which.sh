#!/bin/bash

command=htop

if which $command 
then 
    echo "htop already installed"
else 
    echo "installing htop"
    sleep 2
    sudo apt install htop -y
fi
