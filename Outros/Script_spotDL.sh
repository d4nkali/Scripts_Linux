#!/bin/bash

# Script para o spotDL
# Feito por d4nkali - 2024

verif_spotdl(){

    verficacao=true

    while $verficacao; do

        if [ -d "venv" ]; then

            echo "A pasta 'venv' existe."

            if source venv/bin/activate; then

                if pip3 list | grep -q "spotdl"; then

                    echo "O pacote spotDL está instalado na venv. Atualizando..."
                    pip3 install --upgrade spotdl
                    echo "Atualizado."
                    verficacao=false
                    clear

                else

                    echo "O pacote spotDL não está instalado. Instalando..." 
                    pip3 install spotdl
                    echo "Instalaçao realizada."
                    verficacao=false
                    clear

                fi

                deactivate

            else

                echo "Não foi possível ativar a venv."
                exit 1

            fi

        else

            echo "A pasta 'venv' não existe. Criando uma venv..."
            python3.12 -m venv venv
            echo "venv criada."

        fi

    done

}

executar(){

source venv/bin/activate
echo "Digite o link da musica ou playlist para procurar e baixar: "
read linkmusica
spotdl "$linkmusica"
echo "Terminado"
deactivate

}

verif_spotdl
executar

read -p "Pressione Enter para fechar a janela"
