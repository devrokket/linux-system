#!/bin/bash

# validate two parameters are provided
if [ $# -ne 2 ]; then
    echo "Error: $0 <number_of_rows> <number_of_columns>"
    exit 1
fi

# validate if two arguments are positive
if ! [[ $1 =~ ^[1-9][0-9]*$ ]] || ! [[ $2 =~ ^[1-9][0-9]*$ ]]; then
    echo "Error: Both arguments should be positive integers."
    exit 1
fi

rows=$1
columns=$2

# certain gap
max_length=2

# Print the multiplication results
for ((i=1; i<=rows; i++)); do
    for ((j=1; j<=columns; j++)); do
        result=$((i * j))
	printf "%d * %d = %-${max_length}s   " "$i" "$j" "$result"
    done    
    echo " "
done

exit 0
