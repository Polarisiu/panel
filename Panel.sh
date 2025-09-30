#!/bin/bash

GREEN="\033[32m"
RED="\033[31m"
RESET="\033[0m"

menu() {
    clear
    echo -e "${GREEN}=== 面板管理总菜单 ===${RESET}"
    echo -e "${GREEN}1)  宝塔面板${RESET}"
    echo -e "${GREEN}2)  国际版宝塔${RESET}"
    echo -e "${GREEN}3)  开心版宝塔${RESET}"
    echo -e "${GREEN}4)  1Panel 面板${RESET}"
    echo -e "${GREEN}5)  1Panel 面板拓展应用${RESET}"
    echo -e "${GREEN}6)  1Panel v1 开心版${RESET}"
    echo -e "${GREEN}7)  1Panel v2 开心版${RESET}"
    echo -e "${GREEN}8)  耗子面板${RESET}"
    echo -e "${GREEN}9)  PandaWiki文档${RESET}"
    echo -e "${GREEN}10) 雷池WAF${RESET}"
    echo -e "${GREEN}0)  退出${RESET}"
    read -p $'\033[32m请选择操作: \033[0m' choice
    case $choice in
        1)
            echo -e "${GREEN}正在运行国内宝塔面板脚本...${RESET}"
            bash <(curl -sL https://raw.githubusercontent.com/Polarisiu/panel/main/baota.sh)
            pause
            ;;
        2)
            echo -e "${GREEN}正在运行国际版宝塔脚本...${RESET}"
            bash <(curl -sL https://raw.githubusercontent.com/Polarisiu/panel/main/gjbaota.sh)
            pause
            ;;
        3)
            echo -e "${GREEN}正在运行开心版宝塔脚本...${RESET}"
            bash <(curl -sL https://raw.githubusercontent.com/Polarisiu/panel/main/kxbaota.sh)
            pause
            ;;
        4)
            echo -e "${GREEN}正在运行 1Panel 面板脚本...${RESET}"
            bash <(curl -sL https://raw.githubusercontent.com/Polarisiu/panel/main/1Panel.sh)
            pause
            ;;
        5)
            echo -e "${GREEN}正在运行 1Panel 拓展应用脚本...${RESET}"
            bash <(curl -sL https://raw.githubusercontent.com/Polarisiu/panel/main/tz1panel.sh)
            pause
            ;;
        6)
            echo -e "${GREEN}正在运行 1Panel v1 开心版脚本...${RESET}"
            bash <(curl -sL https://raw.githubusercontent.com/Polarisiu/panel/main/kx1Panelv1.sh)
            pause
            ;;
        7)
            echo -e "${GREEN}正在运行 1Panel v2 开心版脚本...${RESET}"
            bash <(curl -sL https://raw.githubusercontent.com/Polarisiu/panel/main/kx1Panelv2.sh)
            pause
            ;;
        8)
            echo -e "${GREEN}正在运行耗子面板脚本...${RESET}"
            bash <(curl -sL https://raw.githubusercontent.com/Polarisiu/panel/main/haozi.sh)
            pause
            ;;
        9)
            echo -e "${GREEN}正在运行PandaWiki文档脚本...${RESET}"
            bash -c "$(curl -fsSLk https://release.baizhi.cloud/panda-wiki/manager.sh)"
            pause
            ;;
        10)
            echo -e "${GREEN}正在运行雷池WAF脚本...${RESET}"
            bash -c "$(curl -fsSLk https://waf-ce.chaitin.cn/release/latest/manager.sh)"
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
