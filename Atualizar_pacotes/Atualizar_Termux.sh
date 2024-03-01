#!/bin/bash

echo Listar atualizações do PKG do Termux

sleep 1

pkg update

sleep 1

read -p "Pressione Enter para continuar"

echo "Deseja realizar a atualização dos pacot>

read resposta

if [ "$resposta" == "s" ]; then

    pkg upgrade -y
    echo "Atualização concluída."
    sleep 1
    
    echo "Deseja realizar a remoção dos pacot>
    read resposta2

    if [ "$resposta2" == "s" ]; then

        pkg autoclean -y
        echo "Remoção concluída"
        sleep 1

    else

    echo "Não remover os pacotes"

    fi

else

    echo "Atualização cancelada."
    
fi

read -p "Pressione Enter para fechar a janela"
