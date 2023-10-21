#!/bin/bash
# trap ctrl-c and call ctrl_c()
# GUI Dialog Linux/BASH
# apt install dialog

clear
trap ctrl_c INT

HEIGHT=30
WIDTH=60
CHOICE_HEIGHT=30
BACKTITLE="Acesso SSH By Wagner Bizarro"
TITLE="Acesso"
MENU="Esolha uma das opções:"
CANCEL="Exit"

OPTIONS=(
    1 "db01"
    2 "db02"
    3 "db03"
    4 "db04"
    5 "db05"
    6 "ubt01"
    7 "orl01"
)

CHOICE=$(
    dialog --clear \
    --backtitle "$BACKTITLE" \
    --cancel-label "$CANCEL" \
    --title "SERVIDORES" \
    --menu "$MENU" \
    $HEIGHT $WIDTH $CHOICE_HEIGHT \
    "${OPTIONS[@]}" \
    2>&1 >/dev/tty)

    clear
    case $CHOICE in

    1)
    ssh admin@172.27.1.38
    ;;

    2)
    ssh wagner@172.27.1.39
    ;;

    3)
    ssh admin@172.27.1.40
    ;;

    4)
    ssh admin@172.27.1.42
    ;;

    5)
    ssh admin@172.27.1.43
    ;;

    6)
    ssh admin@172.27.1.44
    ;;

    7)
    ssh admin@172.27.1.41
    ;;
    esac

