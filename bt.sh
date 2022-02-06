#!/bin/sh

#################################################
#  _                                            #
# | |    __ _ _____   _                         #
# | |   / _` |_  / | | |                        #
# | |__| (_| |/ /| |_| |                        #
# |_____\__,_/___|\__, |                        #
#                 |___/                         #
#  ____  _            _              _   _      #
# | __ )| |_   _  ___| |_ ___   ___ | |_| |__   #
# |  _ \| | | | |/ _ \ __/ _ \ / _ \| __| '_ \  #
# | |_) | | |_| |  __/ || (_) | (_) | |_| | | | #
# |____/|_|\__,_|\___|\__\___/ \___/ \__|_| |_| #
#################################################


declare grn="\e[0;92m"
declare red="\e[0;91m"
declare reset="\e[0m"

function usage {
    echo "Enable/Disable Bluetooth"
    printf "Usage: $(basename $0) [hed] \n\n" 2>&1
    echo "  -h  help, show usage info"
    echo "  -e  enable, turn BlueTooth on"
    echo "  -d  disable, turn BlueTooth off"
    exit 
}

function pw_notification {
    echo "To access defaults, you may be prompted for your password..."
}

function set_bluetooth {
    local -i state=$1
    eval sudo defaults write /Library/Preferences/com.apple.Bluetooth ControllerPowerState -int $state
}

function restart_daemon {
    eval sudo launchctl stop com.apple.bluetoothd &&
    eval sudo launchctl start com.apple.bluetoothd &&
    echo "Bluetooth daemon restarted."
}


while getopts hed arg; 
do
    case "${arg}" in
        h) usage ;;
        e) pw_notification && set_bluetooth 1 &&
            printf "${grn}==>${reset} Bluetooth Enabled\n" ;;
        d) pw_notification && set_bluetooth 0 &&
            printf "${red}==>${reset} Bluetooth Disabled\n" ;;
        ?) echo "Invalid option: ${arg}" && usage ;;
    esac
done

restart_daemon

exit 0