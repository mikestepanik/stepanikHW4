#!/bin/bash
#This script takes 4 arguments (directory name),(subdirectory),(name of text file), (name of soft link) 
#$1 <--directory name) $2 <--(subdirectory) $3 <--(name of text file) $4 <--(name of the link)
#Example invocation below
#debian@beaglebone:~/cpe422/hw/hw4$ ./simpleAdmin.sh dir1 dir2 nameoftxtfile linkName
echo
echo
echo Making a new directory named $1 inside the current working directory.......................Done!
mkdir $1
echo
echo Making a subdirectory named $2 that is within the $1 directory..............................Done! 
mkdir $1/$2
echo 
echo Creating a text file named $3.txt with the string '"Hello world!"' inside it.................Done!
echo
echo Hello World! >> $3.txt
echo Saving the text file named $3.txt inside the $2 subdirectory...................................Done!
mv $3.txt ~/cpe422/stepanikHW4/$1/$2
echo
echo Making a link named $4...that links the working directory to the $2 directory....................Done!
ln -s ~/cpe422/stepanikHW4/$1/$2 $4
echo 
echo
echo 
echo Process Complete!
echo
