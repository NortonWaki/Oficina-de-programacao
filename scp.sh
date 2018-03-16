echo "==========================================================="

DIR =~/

echo "Iniciando SCP"

sleep 2

scp $1 $2@$3:$DIR
