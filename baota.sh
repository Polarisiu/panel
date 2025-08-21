#!/bin/bash

GREEN="\033[32m"
RED="\033[31m"
RESET="\033[0m"

menu() {
    clear
    echo -e "${GREEN}=== 宝塔面板管理菜单 ===${RESET}"
    echo -e "${GREEN}1) 安装宝塔面板${RESET}"
    echo -e "${GREEN}2) 卸载宝塔面板${RESET}"
    echo -e "${GREEN}0) 退出${RESET}"
    echo
    read -p $'\033[32m请选择操作 (0-2): \033[0m' choice
    case $choice in
        1)
            echo -e "${GREEN}正在安装宝塔面板...${RESET}"
            if [ -f /usr/bin/curl ]; then
                curl -sSO https://download.bt.cn/install/install_panel.sh
            else
                wget -O install_panel.sh https://download.bt.cn/install/install_panel.sh
            fi
            bash install_panel.sh ed8484bec
            pause
            ;;
        2)
            echo -e "${GREEN}正在卸载宝塔面板...${RESET}"
            curl -o bt-uninstall.sh http://download.bt.cn/install/bt-uninstall.sh > /dev/null 2>&1
            chmod +x bt-uninstall.sh
            ./bt-uninstall.sh
            pause
            ;;
        0)
            exit 0
            ;;
        *)
            echo -e "${RED}无效选择，请重新输入${RESET}"
            sleep 1
            menu
            ;;
    esac
}

pause() {
    read -p $'\033[32m按回车键返回菜单...\033[0m'
    menu
}

menu
