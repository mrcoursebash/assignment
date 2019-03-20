#!/usr/bin/env bash
#Filename : guessinggame.sh
#Input : number to guess

rightnumber=$(ls -1 | wc -l)

function correctnumber {
      echo "Please enter a guess:"
      read number
}

correctnumber

count=0

while [[ $count -eq 0 ]]
do
  if [[ $number -gt $rightnumber ]]
  then 
	echo "your guess is too high"
        correctnumber
  elif [[ $number -lt $rightnumber ]]
  then 
	echo "your guess is too low"
        correctnumber
  elif [[ $number -eq $rightnumber ]]
  then 
	echo "Good guess"
	let count=1
  fi
done
