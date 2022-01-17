#!/bin/bash
# User has 3 guess attempts. Use any loop (for, while, until)
echo "What about a small guess-num game?
I's simple: I think of a number from 0 to 9 -
you try to guess it!"

while true;
do
    read -p "Num, please! > " USERNUM

        case $USERNUM in
        [0-9])
           NUM="$(cat /dev/urandom | tr -dc "[0-9]" | fold -w1 | head -n1)"
           if [ "$USERNUM" == "$NUM" ]; then
                   echo "That's right! Ya did it!"
                   exit
           else
                   echo "Nope. Better luck next time!"
		             read -p "Do you want to continue print 'y' or 'yes' > " ANS
		             case $ANS in
                     "y"|"yes" ) continue;;
                     * ) 
                     exit;;
                  esac
           fi
           ;;
        *)
           echo "Nope, single digit from 0 to 9 only."
           ;;
        esac
done