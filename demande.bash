if test $# -ne 2
then
    echo "mettre: $0 <nom> <titre du livre>"
    exit 1 
fi

if grep "$1" membre.txt > /dev/null
then
    num_membre=$(grep "$1" membre.txt | cut -d';' -f1)
else
    echo "$1 n'est pas un membre enregistré"
    exit 2
fi

if grep "$2" livres.txt > /dev/null
then
    :
else
    echo "$2 n'est pas un livre enregistré"
    exit 3
fi

id_livre=$(grep "$2" livres.txt | cut -d';' -f1)
num_exemplaire=$(grep "$id_livre" exemplaires.txt | grep -c "oui")
if [ "$num_exemplaire" -gt 0 ] > /dev/null
then
    exemplaire=$(grep "$id_livre" exemplaires.txt | grep "oui" | head -n 1)
    numero_exemplaire=$(echo $exemplaire | cut -d';' -f2)
    sed -i "s/$exemplaire/$id_livre;$numero_exemplaire;non/" exemplaires.txt
    dates=$(date +"%d %m %Y %X")
    echo "$num_membre;$id_livre;$numero_exemplaire;$dates" >> emprunts.txt
else
    echo "Aucun exemplaire disponible"
    exit 4
fi