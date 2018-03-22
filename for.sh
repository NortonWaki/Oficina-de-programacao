#!/bin/bash
###########################################################################


# Nome do Script    : for.sh 

# Descrição         : primeiro exemplo

# Args              : ./for.sh

# Autor             : Norton Waki

# Email             : nortonnw@hotmail.com

# Data de alteração : 22/03/2018

###########################################################################

clear
#read -p "Informe o inicio da sequencia: " INICIO
#read -p "Informe o final da sequencia:" FINAL

for i in $(seq "$1" "$2")
do
	echo "Criando pasta $i"
	mkdir "Pasta$i"
	sleep 1

done
