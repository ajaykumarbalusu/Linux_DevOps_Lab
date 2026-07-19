#!/bin/bash

i=1

while [ "$i" -le 100];

do
	if [ "$i" -eq 7];
	then
		break
	fi

	echo " The number is : $i"

	i = $((i + 1 ))
done
