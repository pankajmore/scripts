#!/bin/bash
levels=(0 1 2 3 4 5 6 7 8 9 10)
(( count = ${#levels[@]} -1 ))
current=$(cat /sys/class/backlight/acpi_video0/brightness)
if [ "$current" -ne "${levels[0]}" ]
    then
        i=-1
        for n in ${levels[@]}
        do
            if [ "$current" -eq "$n" ]
            then
            	sudo -v
                sudo echo ${levels[$i]} | sudo tee /sys/class/backlight/acpi_video0/brightness
            fi
            (( i += 1 ))
        done
    current=$(cat /sys/class/backlight/acpi_video0/brightness)
#    dcop khotkeys kmilod displayProgress "Brightness" $current
fi
