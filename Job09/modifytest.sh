 #!/bin/bash

#Test=sudo find Shell_Userlist.csv -mmin -1

#Watch if my .csv fil have been modify in the last 10 min

Etat=$(sudo find Shell_Userlist.csv -mmin -10 | grep -c Shell_Userlist.csv)

#if its true launch ./accessrights

echo $Etat
if [[ $Etat = "1" ]]; then
    echo "Ajout des utilisateurs"
    ./accessrights.sh
elif [[ $Etat = "0" ]]
then
    echo "pas de modif"
fi

