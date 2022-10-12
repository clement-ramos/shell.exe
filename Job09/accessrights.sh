#!/bin/bash

./delaccessrights.sh

IFS=","
#Number
cat Shell_Userlist.csv | while read a b c d e;
do

UserName="$b$c"
UserNameNoSpace="${UserName// /}"

UserPasswd="$d$d"
#ou sed 1d
if [ "$a" != "Id" ];
	then
		sudo useradd "$UserNameNoSpace"
                echo "$UserNameNoSpace":"$UserPasswd" | sudo chpasswd

		if [[ "$e" = *"Admin"* ]];
		then
		sudo adduser "$UserNameNoSpace" sudo
		fi
	else
	echo "$a : $b : $c : $d : $e"
	fi
done

cp Shell_Userlist.csv Backup/Shell_UserlistBackup.csv


#cat Shell_Userlist.csv | for((i=0;i<=11;i++))
#do
#read a b c d e;
#done
