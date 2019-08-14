#!/bin/bash
# Something stolen from stack overflow keeping here for my sanity
filename='filename.txt' #name of the file with hosts to lookup
nameserver='8.8.8.8' # nameserver to query

for host in `cat $filename`
do
echo 'Handling lookup DNS for' $host
dig @$nameserver -t A $host +short
done
