#!/bin/bash

# read-menu: a menu driven system information program
# Source: LinuxCommand.org

while true; do
    echo "
    Please Select:
    1. Display System Information
    2. Display Free Disk Space
    3. Display Home Space Utilization
    0. Quit
    "
    read -p "Enter selection [0-3] > "
    clear
    if [[ $REPLY =~ ^[0-3]$ ]]; then
        if [[ $REPLY == 0 ]]; then
            echo "Program Terminated. Good bye..."
            exit 0
        fi
        if [[ $REPLY == 1 ]]; then
            echo "Hostname: $HOSTNAME"
            echo "Host uptime:"
            uptime
        fi
        if [[ $REPLY == 2 ]]; then
            echo "Free Disk Space"
            df -h #-h human readable format
        fi
        if [[ $REPLY == 3 ]]; then
            if [[ $(id -u) == 0 ]]; then
                echo "Home Space Utililization for (All Users)"
                du -sh /home/*
            else
                echo "Home Space Utilization for ($USER)"
                du -sh $HOME
            fi
        fi
    else
        echo "Invalid entry."
    fi
    read -p "Enter to continue..."
done