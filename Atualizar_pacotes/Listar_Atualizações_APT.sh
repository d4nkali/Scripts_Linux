#!/bin/bash

echo Listar atualizações do APT

sleep 1

sudo apt update

sleep 1

sudo apt list --upgradable

read -p "Pressione Enter para fechar a janela"