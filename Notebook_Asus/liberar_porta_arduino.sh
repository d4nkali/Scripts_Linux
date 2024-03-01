#!/bin/bash

#Programa para abilitar placas arduino no computador caso de error

echo "Habilitador da placa arduino por Danilo Pereira 2023"

sleep 1

echo "Lembre que você so pode usar esse programa com IDE aberto e o Arduino na porta USB para funcionar corretamente."

sleep 2

sudo chown danilo /dev/ttuUSB0

sudo chown danilo /dev/ttyUSB0

sleep 1

echo "Feche e abra novamente o IDE."

echo "Finalizado. Você ja pode fechar essa janela ou espere 3 minutos."

sleep 180

