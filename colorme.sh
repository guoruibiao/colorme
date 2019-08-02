#!/usr/bin/env bash
# no class structure, just code snippets
# todo: define all the supported functions.
function blob(){
    raw="\033[5m$1\033[0m"
    echo $raw
}

function red(){
    echo "\033[1;31;40m$1\033[0m"
}

function green() {
    echo "\033[7;32;42m$1\033[0m"
}

# ...


# factory for formating string 
# use `shift` to support parameters...
function colorme() {
    ret=$1
    shift
    while [ -n "$1"  ]
    do
        ret=`$1 $ret`
        shift
    done
    echo $ret
}


# testcase
ret=`colorme tiger blob red`
echo -e $ret
