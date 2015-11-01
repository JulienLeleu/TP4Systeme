#!/bin/bash

chemin=$HOME/tags
tag=$1;
shift;

for i in $@
do
	rm $chemin/$tag/$i
done
