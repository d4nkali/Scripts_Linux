#!/bin/bash

# Script de automatização para baixa os aplicativos apos a intalação para o Ubuntu 24.04 LTS.
# Feito por d4nkali - 2024
# OBS: Ja ter o snap e flatpak instalado no sistema.

pacotes_apt=(

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
    qbittorrent
    gparted
    mysql-server
    dotnet-runtime-8.0
    dotnet-sdk-8.0
    p7zip
    gufw
    npm
    outguess
    libfuse2
    php
    maven
    postgresql
    fritzing
    wget
    build-essential

)

pacotes_snap=(

    blender
    cheese
    intellij-idea-community --classic
    dbeaver-ce

)

pacotes_flatpak=(

    org.telegram.desktop
    org.libretro.RetroArch
    org.kde.kdenlive
    it.mijorus.gearlever
    io.missioncenter.MissionCenter
    io.github.thetumultuousunicornofdarkness.cpu-x
    com.mattjakeman.ExtensionManager
    com.usebottles.bottles
    io.github.jeffshee.Hidamari

)

sudo dpkg --add-architecture i386

funcao_apt(){

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

funcao_flatpak(){

    flatpak update

    for pacote_3 in "${pacotes_flatpak[@]}";
    do

        flatpak install $pacote_3 -y

    done

}

funcao_infos(){

    echo "Ainda a pacotes para instalar como os AppImages, Portables, .deb e Java.

Aplicativos AppImage:

- Arduino IDE
- Heroic Games Launcher
- Stellarium
- Modrith
- CurseForge

Aplicativos Tar.xz:

- Godot
- balenaEtcher
- Arduino Micropython 
- Arduino CLI
- Torr Browser

Aplicativos Java:

- brModelo
- ESPlorer

"

}

funcao_apt
funcao_snap
funcao_flatpak
funcao_infos
