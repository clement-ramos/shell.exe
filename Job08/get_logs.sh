#!/bin/bash
#var=$(pwd)

date=$(date '+%d-%m-%Y-%H:%M')

sudo grep -c "session opened" /var/log/auth.log > Backup/number_connection-$date

tar -czvf number_connection.tar.gz /Backup

mv number_connection.tar.gz Backup/number_connection-$date.tar.gz

rm Backup/number_connection-$date
