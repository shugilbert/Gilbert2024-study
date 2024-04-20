#!/bin/bash
read -p "enter a file "
 
if [ -f "demo.txt" ]; 
then

echo "File exist"
else

 echo "File not exist"
fi


