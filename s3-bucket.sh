#!/bin/bash

     aws s3 mb s3://gilbert-primus1122 --region us-west-1

    if [[ "gilbert-primus1122 " -eq 0 ]]
    then
        echo "s3 bucket 'gilbert-primus1122 ' created successfully."
    else
        echo "s3e bucket 'gilbert-primus1122 ' already exists."
    fi

