#!/bin/bash

#check arguments
if [ "$#" -ne 1 ]; then
    echo "Usage: python-environ {environment name}"
    exit
fi 

#for debian based distros only
sudo apt-get install python3-venv
sudo apt-get install python3-pip

#create virtual env
pyvenv $1

#activate virtual env
source "$1"/bin/activate

#get requirements.txt and install 
while read p; do
  pip install $p
done <requirements.txt

#get any extra commands that need to be run
while read p; do
  $p
done <extra.txt

#get run file and execute
while read p; do 
  $p
done <run.txt

echo "Python environmet complete"
