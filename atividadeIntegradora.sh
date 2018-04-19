#!/bin/bash
###########################################################################


# Nome do Script    : atividadeIntegradora.sh 

# Descrição         : mostra os dispositivos conectados e manda no email

# Args              : ./atividadeIntegradora.sh

# Autor             : Norton Waki

# Email             : nortonnw@hotmail.com

# Data de alteração : 19/04/2018

###########################################################################

nmap -sP 192.168.9.70/24 > $nmaps

cat $nmaps | grep "Nmap scan" | cut -d " " -f5 > IP.txt
cat $nmaps | grep "MAC" | cut -d " " -f3 > MAC.txt

LINHAS = $(cat IP.txt | wc -l)

for i in $(seq "1" $LINHAS)

do

cat IP.txt | grep 192 |cut -d ' ' -f5 | head -n$i | tail -n1

cat MAC.txt | grep MAC | head -n$i | tail -n1

nmap -O $(sed -i '$i p' ip.txt)

ssmtp wnnortonnw@gmail.com < IP.txt >
ssmtp wnnortonnw@gmail.com < MAC.txt > 

