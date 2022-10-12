#!/bin/bash

IFS=","

cat Shell_Userlist.csv | while read a b c d e;
do

UserName="$b$c"
UserNameNoSpace="${UserName// /}"

UserPasswd="$d$d"

if [ "$a" != "Id" ];
	then
		sudo useradd "$UserNameNoSpace"
                echo "$UserNameNoSpace":"$UserPasswd" | sudo chpasswd

		if [ "$e" == "Admin" ];
		then
		sudo adduser "$UserNameNoSpace" sudo
		fi
	else
	echo "$a : $b : $c : $d : $e"
	fi
done




#cat Shell_Userlist.csv | for((i=0;i<=11;i++))
#do
#read a b c d e;
#done
