#!/bin/bash

IFS=","

cat Shell_Userlist.csv | while read a b c d e;
do

UserName="$b$c"
UserNameNoSpace="${UserName// /}"

UserPasswd="$d$d"

if [ "$a" != "Id" ];
        then
                sudo userdel "$UserNameNoSpace"
fi
done




