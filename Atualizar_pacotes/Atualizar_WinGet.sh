#!/bin/bash

while true; do
    
    echo "Listar atualizações do WinGet"
    sleep 1
    winget update
    sleep 1

    echo "Deseja realizar a atualização de algum pacote? (s/n)"
    read resposta

    if [ "$resposta" == "s" ]; then

        echo "Digite o ID do pacote que deseja atualizar"
        read pacote
        winget update $pacote
        echo "Atualização concluída."
        sleep 1

    else

        echo "Atualização cancelada."
        break

    fi

done

read -p "Pressione Enter para fechar a janela"