#!/bin/bash

# using if with the test statement to know if the dir is present or not

if [ -d /etc/pacman.d ]
then
    # Host is based on Arch
    echo " Your system is Arch "
    sleep 1
    echo " Do you want to upgrade your Arch linux? 0 or 1 "
    read ans

    if [ $ans -eq 1 ]
    then
        echo " Do you want logfile to save output? 0 or 1"
        read num
        if [ $num -eq 1 ]
        then
        
	    sudo pacman -syu >> logfile.txt
	    

        else
            sudo pacman -syu
  
        fi	
   
    fi

elif [ -d /etc/apt ] 
then
	# Host is based on debian
    echo " Your system is Debian "
    sleep 1
    echo " Do you want to upgrade your Debian system? 0 or 1"
    read ans
   
    if [ $ans -eq 1 ]
    then
        echo " Do you want logfile to save output? 0 or 1"
        read num


        if [ $num -eq 1 ]
        then
        
	    sudo apt update >> logfile.txt
	    sudo apt dist-upgrade >> logfile.txt

        else
            sudo apt update
            sudo apt dist-upgrade
  
        fi	
   
    fi
    
else
    echo " System not found "

fi
    

