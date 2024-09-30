#!/bin/bash

# Script de automatização para baixa os aplicativos apos a intalação para o Ubuntu 24.04 LTS.
# Feito por d4nkali - 2024

# OBS: Ja ter o Snap e Flatpak instalado e habilitado no sistema.

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
    sqlite3
    nmap
    virtualbox
    tree
    mangohud

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
    rs.ruffle.Ruffle

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

    flatpak install --user https://sober.vinegarhq.org/sober.flatpakref

}

funcao_infos(){

echo "Ainda a pacotes para instalar como os AppImages, Portables, .deb, Java e PWA.

Aplicativos AppImage:

- Arduino IDE
- Heroic Games Launcher
- Stellarium
- Modrith
- CurseForge
- Minecraft Bedrock Linux
- balenaEtcher

Aplicativos .deb ou PPA:

- Google Chrome
- Brave Browser
- Earth Pro
- Discord
- Spotify
- OnlyOffice
- GameMaker
- Proton VPN
- Steam
- Insomnia
- Lutris

Aplicativos Tar.xz:

- Godot
- Arduino Micropython 
- Arduino CLI
- Tor Browser
- Itch.io

Aplicativos Java:

- brModelo
- ESPlorer

Aplicativos PWA:

- Canva
- Whatsapp Web
- Figma
- Virus Total
- Xcloud
- Geoforce Now
- Sedja

"

}

funcao_apt
funcao_snap
funcao_flatpak
funcao_infos
