#!/bin/bash

source select_option.sh

function vim_select() {
  options=($@)
  length=${#options[@]}
 
  if [ $length -eq 0 ]
  then
    echo No file to open.
  elif [ $length -eq 1 ]
  then
    vim ${options[0]}
  else
    select_option "${options[@]}"
    choice=$?
    vim ${options[$choice]}
  fi
}
