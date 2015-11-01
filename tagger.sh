#!/bin/bash

chemin=$HOME/tags
tag=$1;
shift;

mkdir -p $chemin/$tag

for i in $@
do
	ln $i $chemin/$tag/$i
done
