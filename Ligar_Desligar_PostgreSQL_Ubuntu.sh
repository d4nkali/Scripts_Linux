#!/bin/bash

# Script de ligar ou desligar o PostgreSQL para o Ubuntu.
# Feito por d4nkali - 2024

echo "Script de Ligar ou Desligar o Postgre no Ubuntu."

sleep 1

echo "Deseja saber se o Postgre está funcionando? (Y/n) | Para sair digite ':q'."

read resposta_status

if [ "$resposta_status" == "n" ]; then

    echo "Não mostrar"

else

    sudo systemctl status postgresql.service

fi

echo "Qual ação deseja fazer?"
echo "(Ligar [1] | Desligar [2] | Cancelar [Qualquer tecla])"
read resposta_main

if [ "$resposta_main" == "1" ]; then

    echo "Ligando o Postgre..."
    sudo systemctl start postgresql.service
    echo "Postgre ligado."

elif [ "$resposta_main" == "2" ]; then

    echo "Desligando o Postgre..."
    sudo systemctl stop postgresql.service
    echo "Postgre desligado."

else

    echo "Cancelando"

fi
