#!/bin/bash

NAME=""
WISHES=""

USAGE(){
    echo "USAGE::$(basename $0) -n <name> - w <wishes>"
    echo "options::"
    echo " -n, specify the name (mandatory)"
    echo " -w, Specify the wishes. ex, Good morning"
    echo " -h  Dispaly Help and Exit"
}

while getopts "n:w:h" opt; do
    case $opt in
        n) NAME="$OPTARG";;
        w) WISHES="$OPTARG";;
        \?) echo "invalid options: -"$OPTARG"" >&2; USAGE; exit;;
        :))USAGE; exit;;
        h|*) USAGE; exit;;
       
    esac
done