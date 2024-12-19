#!/bin/bash

# Script de automatização para baixa os aplicativos após a instalação para o Ubuntu 24.04 LTS.
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
    meson
    ninja-build
    obs-studio
    clang
    neovim
    gnome-tweaks
    docker.io
    docker-compose
    ffmpeg
    python3-pip
    python3-venv
    cowsay
    cmatrix
    mangohud

)

pacotes_snap=(

    blender
    cheese
    intellij-idea-community --classic
    dbeaver-ce
    thunderbird

)

pacotes_flatpak=(

    org.telegram.desktop
    org.libretro.RetroArch
    it.mijorus.gearlever
    io.missioncenter.MissionCenter
    io.github.thetumultuousunicornofdarkness.cpu-x
    com.mattjakeman.ExtensionManager
    com.usebottles.bottles
    io.github.jeffshee.Hidamari
    rs.ruffle.Ruffle
    org.DolphinEmu.dolphin-emu
    org.ppsspp.PPSSPP
    io.github.flattool.Warehouse
    io.github.streetpea.Chiaki4deck
    com.anydesk.Anydesk
    io.gitlab.theevilskeleton.Upscaler
    dev.geopjr.Collision
    com.github.finefindus.eyedropper
    com.github.ADBeveridge.Raider
    fr.sgued.ten_forward

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

        flatpak install flathub $pacote_3 -y

    done

    flatpak install --user https://sober.vinegarhq.org/sober.flatpakref

}

funcao_infos(){

echo "Ainda a pacotes para instalar como os AppImages, Portables, .deb, Java, Python e PWA.

Aplicativos AppImage:

- Arduino IDE
- Heroic Games Launcher
- Stellarium
- Modrith
- CurseForge
- Minecraft Bedrock Linux
- balenaEtcher
- Duckstation
- PCSX2
- Citra
- Cemu
- Krita
- Kdenlive
- Flycast
- OpenBOR
- OpenRGB
- MelonDS

Aplicativos .deb ou PPA:

- Google Chrome
- Brave Browser
- Visual Studio Code
- Earth Pro
- Discord
- Spotify
- OnlyOffice
- GameMaker
- Proton VPN
- Steam
- Insomnia
- Lutris
- Parsec
- Love2D
- OBS Studio (Atualizado)
- Qbitorrent (Atualizado)

Aplicativos Tar.xz:

- Godot
- Arduino Micropython 
- Arduino CLI
- Tor Browser
- Itch.io
- NVM (Gerenciador do Node e Nodejs Atualizado)

Aplicativos Java:

- brModelo
- ESPlorer

Aplicativos Python:

- spotDL

Aplicativos PWA:

- Canva
- Whatsapp Web
- Figma
- Virus Total
- XCloud
- Geoforce Now
- Sejda

"

}

echo "Script Pós Instalação para o Ubuntu"
echo ""

funcao_apt
funcao_snap
funcao_flatpak
funcao_infos

read -p "Pressione Enter para fechar a janela"
