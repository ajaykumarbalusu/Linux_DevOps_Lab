#!/bin/bash

i = 1

until [ "$i" -gt 100] ;

do
	echo "The number is : $i"
	i = $((i + 1))

done
