#!bin/bash

system_number = $RANDOM
no_of_chances = 1 
for in 1 2 3 4 5 6 7 8 9 10  #((; ;)) infinity for loop --> COMMENT 
do
 	read -p "This is your chance no $no_of_chances, Guess my number: " user_number
 	if [ $user_number -eq $system_number ]
	then 
		echo "Your guess is correct"
		echo "You guess this with $no_of_chances many chances"
		break 
	else 
		echo "Your guess is wrong"
	if [$user_number -ge $system_number]
	then 
		echo "Please select some lesser value than $user_number"
	else 
		echo "Please select higher value than $user_number"
	fi
  fi 
  no_of_chances = $((no_of_chances+1))
done	
