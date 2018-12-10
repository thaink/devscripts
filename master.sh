#!/bin/bash

# This is the only file you should include to .bashrc
# All other dependent files should be included in here

source vim_select.sh

#Aliases
alias vgdiff='vselect $(git diff --name-only)'
alias ggraph='git log --graph --full-history --all --color --pretty=tformat:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s%x20%x1b[33m(%an)%x1b[0m"'

#Functions
vgshow() {
  if [ $# -eq 0 ]
  then
    vselect $(git show --pretty="" --name-only HEAD)
  else
    vselect $(git show --pretty="" --name-only $1)
  fi
}

vfind() {
  files=$(find -name "*$@*")
  vselect $files
}
