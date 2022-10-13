#!/bin/bash

#delete the User of backup preventing changement in their names
./delaccessrights.sh

IFS=","

cat Shell_Userlist.csv | while read a b c d e;
do

#deleting Space , set UserName as "PrenomNom" and the password as "PasswdPawwd" because 6 car isnt long enough

UserName="$b$c"
UserNameNoSpace="${UserName// /}"
UserPasswd="$d$d"

#avoid the first line
if [ "$a" != "Id" ];
	then
		#adduser anyway and set their passwords
		sudo useradd "$UserNameNoSpace"
                echo "$UserNameNoSpace":"$UserPasswd" | sudo chpasswd

		#Test if their a sudo and attribute it if its true
		if [[ "$e" = *"Admin"* ]];
		then
		sudo adduser "$UserNameNoSpace" sudo
		fi
	else
	echo "$a : $b : $c : $d : $e"
	fi
done

#Sve the file as a Backup
cp Shell_Userlist.csv Backup/Shell_UserlistBackup.csv











#Other options explored :

#cat Shell_Userlist.csv | for((i=0;i<=11;i++))
#do
#read a b c d e;
#done
