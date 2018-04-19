#!/bin/bash/
###########################################################################


# Nome do Script    : mapaRede.sh 

# Descrição         : mostra os dispositivos conectados

# Args              : ./mapaRede.sh

# Autor             : Norton Waki

# Email             : nortonnw@hotmail.com

# Data de alteração : 23/03/2018

###########################################################################

nmap -sP 192.168.9.1/24 > IP.txt


for i in $(seq cat IP.txt | grep MAC | cat -b | tail -n1 | cut -d 'M' -f1)
	cat IP.txt | grep MAC | head -ni
	cat IP.txt | grep 192. | cut -d ' ' -f5 | head -ni

