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

funcao_lazyvim(){

    echo "Deseja instalar o LazyVim agora? (N/y)"
    read resposta_nvchad

    if [ "$resposta_nvchad" == "n" ]; then

    echo "Não instalar o nvChad para o NeoVim."

    else

    git clone https://github.com/LazyVim/starter ~/.config/nvim
    rm -rf ~/.config/nvim/.git

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

funcao_pkg
funcao_infos
funcao_lazyvim

read -p "Pressione Enter para fechar a janela"
