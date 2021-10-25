#!/bin/bash

# Author      : Dreifus-404 <github.com/Dreifus-404>
# Description : Instalation program

function main_Banner {
    clear
    echo -e "▐▓█▀▀▀▀▀▀▀▀▀█▓▌░▄▄▄▄▄░       @ Author : Dreifus-404"
    echo -e "▐▓█\e[30m░░\e[1;37m▀\e[0;30m░░\e[1;37m▀▄\e[0;30m░░\e[0m█▓▌░█▄▄▄█░       @ Github : github.com/Dreifus-404"
    echo -e "▐▓█\e[30m░░\e[1;37m▄\e[0;30m░░\e[1;37m▄▀\e[0;30m░░\e[0m█▓▌░█▄▄▄█░"
    echo -e "▐▓█▄▄▄▄▄▄▄▄▄█▓▌░█████░"
    echo -e "░░░░▄▄███▄▄░░░░░█████░"
    echo -e "----------------------"
    echo -e " @ Verificando instalação...\n"
    sleep 1.5
}

function finish_Banner {
    clear
    echo -e "▐▓█▀▀▀▀▀▀▀▀▀█▓▌░▄▄▄▄▄░       @ Author : Dreifus-404"
    echo -e "▐▓█░░▀░░▀▄░░█▓▌░█▄▄▄█░       @ Github : github.com/Dreifus-404"
    echo -e "▐▓█░░▄░░▄▀░░█▓▌░█▄▄▄█░"
    echo -e "▐▓█▄▄▄▄▄▄▄▄▄█▓▌░█████░"
    echo -e "░░░░▄▄███▄▄░░░░░█████░"
    echo -e "----------------------"
    echo -e " @ Instalação Completa!.\n"
    sleep 1.5

    echo -e " \e[40;33m[*] Iniciando codigo...\e[0m"

    clear
    python ~/N.G.I/code.py
}

function verify_Instalation {
# ---- Verificando se o codigo foi instalado corretamente

    if cd ~/N.G.I; then
        echo -e " \e[40;32m[+] Instalação correta.!\e[0m"

    else
        echo -e " \e[1;31m[-] Instalação incorreta!!\e[0m\n"
        echo -e " \e[40;33m[*] Instalando corretamente..."
        sleep 1.5

        cd ~/

        dpkg --configure -a > /dev/null
        apt-get install git -y > /dev/null
        git clone https://github.com/Dreifus-404/N.G.I

        cd ~/N.G.I
        chmod +x install.sh
        ./install.sh
    fi
}

function install_Package {
    cd $PREFIX/bin
    if test -x "python"; then
        echo -e " \e[40;32m[+] Pacote Python Instalado!\e[0m"
        pip install -r ~/N.G.I/requirements.txt > /dev/null
        sleep 1.5

    else
        echo -e " \e[1;31m[-] Pacote Python não instalado\e[0m"; sleep 1.5
        echo -e " \e[40;33m[*] Instalando Python...\e[0m"

        apt-get install python -y > /dev/null
    fi
}

main_Banner
verify_Instalation
install_Package
finish_Banner
