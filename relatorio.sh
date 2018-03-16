###########################################################################


# Nome do Script    : relatorio.sh 

# Descrição         : Exibe o relatorio

# Args              : ./relatorio.sh

# Autor             : Norton Waki

# Email             : nortonnw@hotmail.com

# Data de alteração : 15/03/2018

###########################################################################

echo "===================================================================="
echo ""

MAQUINA=$(uname -a | cut -d ' ' -f2)
HORA=$(date +%H:%M:%S)
DIA=$(date +%d/%m/%y)
ATIVO=$(uptime -s)
KERNEL=$(uname -v | cut -d ' ' -f1)
NCPU=$(cat /proc/cpuinfo | grep -e "cpu cores"|head -n1 | cut -d ':' -f2)
MCPU=$(cat /proc/cpuinfo | grep -e "model name"|head -n1 | cut -d ':' -f2)

echo Relatorio da maquina: $MAQUINA
echo Data/Hora: $HORA -- $DIA
echo ""
echo "===================================================================="
echo ""
echo Maquina ativa desde: $ATIVO
echo ""
echo Versão do Kernel: $KERNEL
echo ""
echo CPUs
echo Quantidade de CPUs/Core: $NCPU
echo ""
echo Modelo da CPU: $MCPU
echo ""
echo Partições: 
df -h
