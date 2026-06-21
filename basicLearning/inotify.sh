#! /usr/bin/bash

mkdir -p testing

inotifywait -m testing

# testing/ OPEN,ISDIR 
# testing/ ACCESS,ISDIR 
# testing/ CLOSE_NOWRITE,CLOSE,ISDIR 
# testing/ OPEN hello.txt
# testing/ MODIFY hello.txt
# testing/ CLOSE_WRITE,CLOSE hello.txt
# testing/ OPEN,ISDIR 
# testing/ ACCESS,ISDIR 
# testing/ CLOSE_NOWRITE,CLOSE,ISDIR 
# testing/ OPEN hello.txt
# testing/ ACCESS hello.txt
# testing/ CLOSE_NOWRITE,CLOSE hello.txt
# testing/ OPEN,ISDIR 
# testing/ ACCESS,ISDIR 
# testing/ CLOSE_NOWRITE,CLOSE,ISDIR