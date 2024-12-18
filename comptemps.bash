if [ "$#" -ne 4 ]; then
    echo "Usage: $0 jour mois année heures:minutes:secondes"
    exit 1
fi

jour=$1
mois=$2
annee=$3
heure=$4

date_arg="$annee-$mois-$jour $heure"
date_courante=$(date '+%Y-%m-%d %X')

timestamp_arg=$(date -d "$date_arg" +%s 2>/dev/null)
timestamp_courant=$(date -d "$date_courante" +%s)

if [ -z "$timestamp_arg" ]; then
    echo "Erreur : La date fournie est invalide."
    exit 2
fi

if [ "$timestamp_arg" -ge "$timestamp_courant" ]; then
    echo "0" 
    exit 0
fi

difference=$(( (timestamp_courant - timestamp_arg) / 86400 ))

if [ "$difference" -gt 365 ]; then
    echo "1"
elif [ "$difference" -gt 30 ]; then
    echo "2"  
else
    echo "3" 
fi
