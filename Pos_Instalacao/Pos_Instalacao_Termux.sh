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
    tree
    neovim
    lua53
    clang

)

funcao_pkg(){

    pkg update && pkg upgrade -y

    for pacote in "${pacotes_pkg[@]}";
    do

        pkg install "$pacote" -y

    done

    pkg autoremove

}

funcao_nvchad(){

    echo "Deseja instalar o NVchad agora? (N/y)"
    read resposta_nvchad

    if [ "$resposta_nvchad" == "n" ]; then

    git clone https://github.com/NvChad/starter ~/.config/nvim && nvim

    else

    echo "Não instalar o nvChad para o NeoVim."

    fi

}

funcao_infos(){

echo "Ainda a pacotes e configurações para fazer como:

- Instalar alguma Nerd Font;
- Configurar para Dracula Theme;
- Configurar gitconfig e vim/nvim;
- Configurar OpenSSH;
- Configurar para um Repositorio mais proximo (America do Norte);

"

}

echo "Script Pós Instalação para o Termux"
echo ""

#funcao_pkg
funcao_infos
#funcao_nvchad
