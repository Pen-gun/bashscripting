#! /usr/bin/bash

url="https://examplefile.com/document/pdf/1-mb-pdf"
curl -I ${url} -o testing.txt # getting headers with -I