#!/binbash

i = 1

while [ i -le 100] ;

do
	echo "The number is : $i"

	i = $((i + 1))

done
