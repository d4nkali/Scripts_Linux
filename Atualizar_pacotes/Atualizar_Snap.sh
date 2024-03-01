#!/bin/bash

echo Listar atualizações do Snap

sleep 1

sudo snap refresh --list

read -p "Pressione Enter para continuar"


echo "Deseja realizar a atualização dos pacotes? (s/n)"

read resposta

if [ "$resposta" == "s" ]; then

    sudo snap refresh
    echo "Atualização concluída."
    sleep 1
    
else

    echo "Atualização cancelada."

fi

read -p "Pressione Enter para fechar a janela"