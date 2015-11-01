#!/bin/bash

chemin=$HOME/path
fichier=$(echo $@ | sed "s/ -f /;/g" | cut -d";" -f2)
echo $fichier;

while test $# -ne 0
do
	arg=$1;
	if test $arg == "-f"
	then
		break;
	fi
	
	if test $arg != "-d"
	then
		./detagger.sh $arg $fichier 
	fi
	shift;
done
