#!/bin/bash
#var=$(pwd)

date=$(date '+%d-%m-%Y-%H:%M')
path=$(pwd)
#echo $path

sudo grep -c "session opened" /var/log/auth.log > $path/Backup/number_connection-$date

tar -czvf number_connection.tar.gz $path/Backup

mv number_connection.tar.gz $path/Backup/number_connection-$date.tar.gz

rm $path/Backup/number_connection-$date
