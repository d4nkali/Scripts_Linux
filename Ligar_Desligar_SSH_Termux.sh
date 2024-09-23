#!/bin/bash

# Script de ligar ou desligar o SSH para o Termux (Android).
# Feito por d4nkali - 2024

echo "Script de Ligar ou Desligar o SSH no Termux."

sleep 1

echo "Deseja saber se o SSH está funcionando? (Y/n)"

read resposta_status

if [ "$resposta_status" == "n" ]; then

    echo "Não mostrar"

else

    if pgrep sshd > /dev/null; then

        echo "SSH funcionando!"

    else

        echo "SSH não está funcionando"

    fi

fi

echo "Qual ação deseja fazer?"
echo "(Ligar [1] | Desligar [2] | Cancelar [Qualquer tecla])"
read resposta_main

if [ "$resposta_main" == "1" ]; then

    echo "Ligando o SSH..."
    sshd
    echo "SSH ligado."

elif [ "$resposta_main" == "2" ]; then

    echo "Desligando o SSH..."
    pkill sshd
    echo "SSH desligado."

else

    echo "Cancelando"

fi
