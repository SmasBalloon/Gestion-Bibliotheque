while read ligne
do
    date=$(echo $ligne | cut -d';' -f3)
    rep=$(source comptemps.bash $date)
    if [ "$rep" -eq 3 ] || [ "$rep" -eq 2 ]
    then
        echo "Le livre $ligne a rendre"
    fi
done < emprunts.txt
