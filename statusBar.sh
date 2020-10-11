#!/bin/sh

vpnstatus () {
    STAT=$(ip addr | grep proton | wc -l)
    if [ $STAT -eq 2 ]
    then
	echo "Connected"
    else
	echo "Disconneced"
    fi
}
while true
do
    xsetroot -name "| $(vpnstatus) | $(date) |"
    #echo "| $(vpnstatus) | $(date) |"
    sleep 1 
done
