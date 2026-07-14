#!/bin/bash

echo "Enter the age for the person"

read age

if [ age > 18 ] then ;
	echo "The person is major"

elif [ age < 18 ] then ;

	echo "The person is minor'

else 

	echo "The age of the person is 18, and he/she is major"
fi
