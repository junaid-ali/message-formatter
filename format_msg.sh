#!/bin/bash

print_symbol() {
    for ((i=0; i<=$1; i++)); do
        printf "${2}"
    done
    echo
}

# Argumets:
# $1: msg to print
# $2: symbol to print
# $3: color code
print_msg() {

    total_chars=90
    msg_len=${#1}

    print_symbol $total_chars "${2}"

    num_spaces=$(( $total_chars/2-$msg_len/2-1 ))
    for ((i=0; i<=num_spaces; i++)); do
        printf " "
    done
    if [[ -n ${3} ]]
    then
        echo -e "${3}${1}\033[0m"
    else
        echo -e "${1}"
    fi

    print_symbol $total_chars "${2}"
}

#double quotes is important for asterisk here
print_msg "hey how are you" "*"
echo
print_msg "Xgrid Solutions" "-" "\033[1m"
echo
print_msg "print a different symbol" "=" "\033[1m"
echo
print_msg "Running apt-get update and installing required packages to setup environment" "<"
echo
print_msg "Running apt-get update and installing required packages to setup environment" "-"
echo
