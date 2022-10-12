 #!/bin/bash

#Test=sudo find Shell_Userlist.csv -mmin -1

#echo "$Test"

Etat=$(sudo find Shell_Userlist.csv -mmin -10 | grep -c Shell_Userlist.csv)

echo $Etat
if [[ $Etat = "1" ]]; then
    echo "Ajout des utilisateurs"
    ./accessrights.sh
elif [[ $Etat = "0" ]]
then
    echo "pas de modif"
fi

