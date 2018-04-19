#!/bin/bash
###########################################################################

echo "Contador de arquivos"

CAMINHO=$(cd) $1
 
	if [ -f $CAMINHO ]
	then
		CONTADOR=$(ls -a $CAMINHO | wc -l)
		echo "$CONTADOR"
	fi
