#!/bin/bash

echo Listar atualizações do Pacman

sleep 1

sudo pacman -Sy

sleep 1

pacman -Qu

read -p "Pressione Enter para continuar"


echo "Deseja realizar a atualização dos pacotes? (s/n)"

read resposta

if [ "$resposta" == "s" ]; then

    sudo pacman -Syu --noconfirm
    echo "Atualização concluída."
    sleep 1

    echo "Deseja realizar a remoção dos pacotes que não são mais necessarios? (s/n)"
    read resposta2

    if [ "$resposta2" == "s" ]; then

        sudo pacman -Rns $(pacman -Qdtq)
        echo "Remoção concluída"
        sleep 1

    else

    echo "Não remover os pacotes"

    fi

else

    echo "Atualização cancelada."

fi

read -p "Pressione Enter para fechar a janela"
