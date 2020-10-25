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
ldate () {
    echo $(date +"%a %b %D %R:%S")
}
batt () {
    acpi
}

while true
do
    xsetroot -name "| $(acpi) | $(vpnstatus) | $(ldate) |"
    sleep 1 
done
