###########################################################################


# Nome do Script    : relatorio2.sh 

# Descrição         : Exibe o relatorio2

# Args              : ./relatorio2.sh

# Autor             : Norton Waki

# Email             : nortonnw@hotmail.com

# Data de alteração : 16/03/2018

###########################################################################

clear
echo "===================================================================="
echo ""

ID=$(id -u)
NOME=$(id | cut -d '(' -f2 | cut -d ')' -f1)
TOTAL=$()
LOGIN=$()

echo Usuario: $NOME
echo ""
echo UID: $ID
echo Nome ou Descrição: $NOME
du -hc /home/$USER  > total.txt 2>/dev/null
echo Total Usado: `grep total total.txt` 
echo ""

echo Ultimo Login:
echo "Usuario  Porta      IP             Data/Hora"
lastlog | grep usuario1 | tr -s ' ' | cut -d ' ' -f1,2,3,4,5,6,7

echo ""
echo "===================================================================="

