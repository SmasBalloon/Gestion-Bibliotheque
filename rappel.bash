if test $# -ne 0
then
    echo "Usage: $0"
    exit 1
fi

while read ligne
do
    date=$(echo $ligne | cut -d';' -f3)
    rep=$(./comptemps.bash $date)
    if [[ "$rep" == "3" ]] || [[ "$rep" == "2" ]]
    then
        echo "Le livre $ligne a rendre"
    else
        continue
    fi
done < emprunts.txt