#!/bin/bash
command=figlet
if command -v $command >/dev/null
then 
    echo "checking dependencies...OK"
    sleep 2
    clear
else
    sudo apt install figlet && sudo apt install toilet-y
    echo "DONE..."
    clear
fi

