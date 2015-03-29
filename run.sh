#!/bin/bash

WORKING_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$WORKING_DIR"

if [ "$1" = "clean" ]; then
    rm *.js
fi

coffee -c *.coffee

atom-shell .
