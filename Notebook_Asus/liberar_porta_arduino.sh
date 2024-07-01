#!/bin/bash

# Programa para abilitar as placas Arduino no computador caso de erro

echo "Habilitador da placa arduino por d4nkali - 2023"

sleep 1

echo "Lembre que você so pode usar esse programa com IDE aberto e o Arduino na porta USB para funcionar corretamente."

sleep 2

sudo chown danilo /dev/ttuUSB0

sudo chown danilo /dev/ttyUSB0

sleep 1

echo "Feche e abra novamente o IDE."

echo "Finalizado. Você ja pode fechar essa janela ou espere 3 minutos."

sleep 180

