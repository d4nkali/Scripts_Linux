#!/bin/bash

# Script de ligar ou desligar o MYsql para o Ubuntu.
# Feito por d4nkali - 2024

echo "Script de Ligar ou Desligar o MYsql no Ubuntu."

sleep 1

echo "Deseja saber se o MYsql está funcionando? (Y/n) | Para sair digite ':q'."

read resposta_status

if [ "$resposta_status" == "n" ]; then

    echo "Não mostrar"

else

    sudo systemctl status mysql

fi

echo "Qual ação deseja fazer?"
echo "(Ligar [1] | Desligar [2] | Cancelar [Qualquer tecla])"
read resposta_main

if [ "$resposta_main" == "1" ]; then

    echo "Ligando o MySQL..."
    sudo systemctl start mysql
    echo "MySQL ligado."

elif [ "$resposta_main" == "2" ]; then

    echo "Desligando o MySQL..."
    sudo systemctl stop mysql
    echo "MySQL desligado."

else

    echo "Cancelando"

fi
