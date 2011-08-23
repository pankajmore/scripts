#!/bin/bash
mpc play `mpc playlist | sed -e "s/^>/ /" | dmenu -i | grep -P -o "^ \d+" `
