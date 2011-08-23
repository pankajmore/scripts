#!/bin/bash
if test "$1" = "a"
then
    sudo -v
    sudo echo -n 20 | sudo tee /proc/acpi/video/VGA/LCD/brightness
    
elif test "$1" = "p"
then
    sudo -v
    sudo echo -n 50 | sudo tee /proc/acpi/video/VGA/LCD/brightness

elif test "$1" = "d"
then
    sudo -v
    sudo echo -n 100 | sudo tee /proc/acpi/video/VGA/LCD/brightness
else
        echo "Usage:"
        echo "  $(basename $0) a # all out powersave mode"
        echo "  $(basename $0) p # powersave"
        echo "  $(basename $0) d # disable powersave modes"
fi
echo ""
