#!/bin/bash

echo "Enter the age for the person"

read age

if [ age -gt 18 ] then ;
	echo "The person is major"

elif [ age -lt 18 ] then ;

	echo "The person is minor'

else 

	echo "The age of the person is 18, and he/she is major"
fi
