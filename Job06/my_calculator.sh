#!/bin/bash

case $2 in
	"+")
	sum=$(($1 + $3))
	;;

        "-")
        sum=$(($1 - $3))
        ;;

        "*")
        sum=$(($1 * $3))
        ;;

        "/")
        sum=$(($1 / $3))
        ;;
	*)
	echo "Opérateur non-reconnu"
esac
echo "$sum"
