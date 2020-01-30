#!/bin/bash
# Pull changes from remote repository recursively

YELLOW=`tput setaf 3`
BOLD=`tput bold`
RESET=`tput sgr0`

find . -name ".git" -type d | while read dir; do echo -e ${YELLOW}${BOLD}${dir/.git/}${RESET}; sh -c "cd ${dir/.git/} && git pull"; done
