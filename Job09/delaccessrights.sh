#!/bin/bash

IFS=","

cat Backup/Shell_UserlistBackup.csv | while read a b c d e;
do

UserName="$b$c"
UserNameNoSpace="${UserName// /}"
UserPasswd="$d$d"

if [ "$a" != "Id" ];
        then
                sudo userdel "$UserNameNoSpace"
fi
done




