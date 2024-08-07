#!/bin/bash

#This script was created to provide simple and automated menu to connect/reconnect and disconnect to/from Endpoint VPN.
#For more information please contact me directly via https://github.com/pphase/snx-cli-launcher
#Script author: pphase

# -----
# Menu:
# -----

while :
do
    echo -e '\033[31m=============================\033[m'
    echo -e '\033[31m= DO NOT CLOSE THIS WINDOW! =\033[m'
    echo -e '\033[31m=============================\033[m'
    echo " "
    echo "Menu"

    echo "1 - Connect/Reconnect to Mobik VPN"
    echo "2 - Disconnect from Mobik VPN"
    echo "3 - Quit"

    read answer;

    case $answer in
        1)
            echo "Connecting/Reconnecting to Mobik VPN"
            echo " "
            sudo snx -s $SERVER_ADDRESS -u $USERNAME # Command to be executed.
            echo " "
            echo -e '\033[32m==============\033[m'
            echo -e '\033[32m= Connected! =\033[m' # Status notification of executed command.
            echo -e '\033[32m==============\033[m'
            echo " "

        ;;

        2)
            echo "Disconnecting from Mobik VPN"
            echo " "
            sudo snx -d # Command to be executed.
            echo " "
            echo -e '\033[32m=================\033[m'
            echo -e '\033[32m= Disconnected! =\033[m' # Status notification of executed command.
            echo -e '\033[32m=================\033[m'
            echo " "


        ;;
        3)
            echo -e '\033[31m=============\033[m'
            echo -e '\033[31m= Quitting! =\033[m' # Status notification of executed command.
            echo -e '\033[31m=============\033[m'
            break # Command to be executed.
        ;;
    esac
done
