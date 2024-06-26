#!/bin/bash

cd ../server

if [[ $# -eq 0 ]]; then
    echo "Usage: $0 <host_name|all>"
    exit 1
elif [[ "$1" == "all" ]]; then
        vagrant up
        vagrant up pfsense
    elif [[ "$1" == "pfsense" ]]; then
        vagrant up pfsense
        vagrant up pfsense
        else
            vagrant up "$1"
fi