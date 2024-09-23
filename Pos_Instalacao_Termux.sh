#!/bin/bash

# Script de automatização para baixa os aplicativos apos a intalação do Termux (Android Terminal).
# Feito por d4nkali - 2024

pacotes_pkg=(

    wget
    git
    openssh
    neofetch
    nano
    vim

)

funcao_pkg(){

    pkg update && pkg upgrade -y

    for pacote in "${pacotes_pkg[@]}";
    do

        pkg install "$pacote" -y

    done

    pkg autoremove

}

funcao_infos(){

echo "Ainda a pacotes e configurações para fazer como:

- Instalar a fonte Monocraft;
- Configurar para Dracula Theme;
- Configurar gitconfig e vim;
- Configurar OpenSSH;

"

}

funcao_pkg
funcao_infos
