#!/bin/bash
sudo cpufreq-set -f 600MHz
cpufreq-info
location=/home/debian
echo $location
items=$(ls) #list the items
echo $items 
numOfitems=$(ls $HOME | wc -l)
echo I have $numOfitems entries inside my directory 
