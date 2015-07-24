#!/bin/bash

WORKING_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$WORKING_DIR"

NODE_BIN_DIR=node_modules/.bin

if [ "$1" = "clean" ]; then
    rm *.js
else
  "$NODE_BIN_DIR/coffee" -bc --no-header *.coffee
  "$NODE_BIN_DIR/electron" .
fi
