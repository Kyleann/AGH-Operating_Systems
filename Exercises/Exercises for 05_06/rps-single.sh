#!/bin/sh 
#compile --> $ ./rps-single.sh <number> or ./rps-single.sh

computer=$[1+$[RANDOM%3]];

echo "Please choose 1 for rock, 2 for paper or 3 for scissors:";
read user;

#FOR ROCK 
if [ $user -eq 1 ] && [ $computer -eq 1 ]; then 
echo "You choose rock, computer choose rock. Tie, no winner!";

elif [ $user -eq 1 ] && [ $computer -eq 2 ]; then 
echo "You choose rock, computer choose paper. You lost!";

elif [ $user -eq 1 ] && [ $computer -eq 3 ]; then 
echo "You choose rock, computer choose scissors. You won!";



#FOR PAPER 
elif [ $user -eq 2 ] && [ $computer -eq 1 ]; then 
echo "You choose paper, computer choose rock. You won!";

elif [ $user -eq 2 ] && [ $computer -eq 2 ]; then 
echo "You choose paper, computer choose paper. You won!";

elif [ $user -eq 2 ] && [ $computer -eq 3 ]; then 
echo "You choose paper, computer choose scissors. You won!";


#FOR SCISSORS  
elif [ $user -eq 3 ] && [ $computer -eq 1 ]; then 
echo "You choose scissors, computer choose rock. You lost!";

elif [ $user -eq 3 ] && [ $computer -eq 2 ]; then 
echo "You choose scissors, computer choose paper. You won!";

elif [ $user -eq 3 ] && [ $computer -eq 3 ]; then 
echo "You choose scissors, computer choose scissors. Tie, no winner!";

fi 
