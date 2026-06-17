#! /usr/bin/bash

#c style for loop
for(( i=0; i<=10; i+=2 ))
do
    if [[ $i -gt 6 || $i -eq 4 ]]
    then
        continue # skip the rest of the loop and move to the next iteration
    fi
    echo "$i"
done

# sequence expression for loop
# for i in {0..9..2} # 0 to 9 with step of 2
# do
#     echo "$i"
# done