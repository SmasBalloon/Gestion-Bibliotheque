if test $# -ne 4
then
    echo "mettre: $0 <-a> <nom> <prenom> <adresse>"
    echo "ou"
    echo "mettre: $0 <-l> <nombre d'exemplaire> <titre> <l'auteur>"
    exit 1
fi

if test $1 = "-a"
then 
    num_membre=$(($(wc -l < membre.txt) + 1))
    echo "$num_membre;$2;$3;$4" >> membre.txt
    exit 0
fi

if test $1 = "-l"
then
    num_livre=$(($(wc -l < livres.txt) + 1)) 
    echo "$num_livre;$3;$4" >> livres.txt
    statue="oui"
    for i in $(seq 1 $2)
    do
        echo "$num_livre;$i;$statue" >> exemplaires.txt
    done
    exit 0
fi