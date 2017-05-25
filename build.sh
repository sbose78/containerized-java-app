#!/bin/bash

yum -y install \
    docker \
    curl
    
service docker start
echo 'Dependencies installed'



