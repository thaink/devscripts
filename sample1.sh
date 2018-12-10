#!/bin/bash

source select_option.sh

echo "Select one option using up/down keys and enter to confirm:"
echo

options=($(ls))

select_option "${options[@]}"
choice=$?

echo "Choosen index = $choice"
echo "        value = ${options[$choice]}"
