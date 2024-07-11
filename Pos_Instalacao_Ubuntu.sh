#!/bin/bash

# Script de automatização para baixa os aplicativos apos a intalação para o Ubuntu 24.04 LTS.
# Feito por d4nkali - 2024
# OBS: Ja ter o snap e flatpak instalado no sistema.

pacotes_apt = (

    vlc
    git
    lua5.4
    neofetch
    gimp
    nodejs
    htop
    nvtop
    golang-go
    default-jre
    default-jdk
    python3.9
    audacity
    nano
    vim
    transmission
    gparted
    mysql-server
    dotnet-runtime-8.0
    dotnet-sdk-8.0
    p7zip
    gufw

)

pacotes_snap = (

    blender
    spotify
    cheese

)

sudo dpkg --add-architecture i386

funçao_apt(){

    sudo apt update && sudo apt dist-upgrade -y

    for pacote in "${pacotes_apt[@]}"; 
    do

        sudo apt install "$pacote" -y

    done

    sudo apt install -f
    sudo apt autoremove

}

funcao_snap(){

    sudo snap refresh

    for pacote_2 in "${pacotes_snap[@]}";
    do

        sudo snap install $pacote_2 -y

    done

}

funçao_apt
funcao_snap
