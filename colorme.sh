#!/usr/bin/env bash
# no class structure, just code snippets
# todo: define all the supported functions.

#################################### styles
function highlight() {
    echo "\033[1m$1\033[0m"
}

function underline() {
    echo "\033[4m$1\033[0m"
}

function blink() {
    echo "\033[5m$1\033[0m"
}

function antiwhite() {
    echo "\033[7m$1\033[0m"
}

function invisible() {
    echo "\033[8m$1\033[0m"
}

#################################### font color, with white background color
function black() {
    echo "\033[30;47m$1\033[0m"
}

function red() {
    echo "\033[31;47m$1\033[0m"
}

function green() {
    echo "\033[32;47m$1\033[0m"
}

function yellow() {
    echo "\033[33;47m$1\033[0m"
}

function blue() {
    echo "\033[34;47m$1\033[0m"
}
# 紫红色
function fuchsia() {
    echo "\033[35;47m$1\033[0m"
}

# 青蓝色
function cyan() {
    echo "\033[36;47m$1\033[0m"
}

function white() {
    echo "\033[37;47m$1\033[0m"
}

################################### custom font color and background color
function _get_color_value() {
    color=`echo $1 | tr a-z A-Z`
    case $color in
        BLACK)
        echo 0
        ;;
        RED)
        echo 1
        ;;
        GREEN)
        echo 2
        ;;
        YELLOW)
        echo 3
        ;;
        BLUE)
        echo 4
        ;;
        FUCHSIA)
        echo 5
        ;;
        CYAN)
        echo 6
        ;;
        WHITE)
        echo 7
        ;;
    esac
}

function _get_style_value() {
    style=`echo $1 | tr a-z A-Z`
    case $style in 
        HIGHLIGHT)
            echo 1
        ;;
        UNDERLINE)
            echo 4
        ;;
        BLINK)
           echo 5
        ;;
        ANTIWHITE)
            echo 7
        ;;
        INVISIBLE)
            echo 8
        ;;
    esac
}

function colorme() {
    # todo limit the parameters
    style=`_get_style_value $2`
    font=`_get_color_value $3`
    background=`_get_color_value $4`
    echo "\033[${style};3${font};4${background}m$1\033[0m"
}


# factory for formating string 
# use `shift` to support unlimited parameters...
function customize() {
    ret=$1
    shift
    while [ -n "$1"  ]
    do
        ret=`$1 $ret`
        shift
    done
    echo $ret
}
