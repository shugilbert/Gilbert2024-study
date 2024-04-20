#!/bin/bash


     aws iam create-user --user-name "kava" 
    if [[ "kava" -eq 0 ]] 
    then
        echo "iam user 'kava' created successfully."
    else
        echo "iam user 'kava' already exists."
    fi

    

    
 
