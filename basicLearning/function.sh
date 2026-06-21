#! /usr/bin/bash

function myfun() {
    echo "$@"
    echo $#
}
#there is also concept of local variables in functions which are only accessible within the function
myfun hello this is a function # Calling the function