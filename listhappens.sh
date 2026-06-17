#! /usr/bin/bash

# ls +al 1>out1.txt 2>out2.txt
# ls +al >out1.txt 2>&1
ls -al >& out.txt