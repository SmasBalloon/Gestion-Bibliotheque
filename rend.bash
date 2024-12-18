if test $# -ne 2
then
    echo "mettre: $0 <nom adherent> <nom du livre>"
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
    id_livre=$(grep "$2" livres.txt | cut -d';' -f1)
else
    echo "$2 n'est pas un livre enregistré"
    exit 3
fi

if grep "$num_membre;$id_livre" emprunts.txt > /dev/null
then
    numero_exemplaire=$(grep "$num_membre;$id_livre" emprunts.txt | cut -d';' -f3)
    echo $numero_exemplaire
    sed -i "/$num_membre;$id_livre/d" emprunts.txt
    sed -i "s/$id_livre;$numero_exemplaire;non/$id_livre;$numero_exemplaire;oui/" exemplaires.txt

else
    "vous n'avez pas emprunté ce livre"
    exit 4
fi 