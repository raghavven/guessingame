#!/usr/bin/env bash
# File: guessinggame.sh

#checking for the total no. of files in the directory
totalfile=$(ls | wc -l)

#using functon as the "guess" function 
function guess {
	echo "Guess the total no. of files in the present folder and then press Enter:"
	read response
	echo "You entered: $response"
} 

#using while loop and if/else to check the logic
while  [[ $response -ne $totalfile ]]
do
	if [[ $response -lt $totalfile ]]
	then	
		echo "You guessed it low"
	else
		echo "you guessed it high"
	fi
	guess
done
echo "Congratulations, you guessed it right"
echo "The total no. of files in the directory is" $totalfile
