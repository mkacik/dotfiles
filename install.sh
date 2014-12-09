#!/bin/bash

PWD=$(pwd)
if [ "$PWD" == "$HOME" ]; then
  REPO=$(dirname $0)
  for DIR in $REPO/*; do
    if [ -d "$DIR" ]; then
      for FILE in $(find "$DIR" -mindepth 1 -maxdepth 1); do
        echo "ln -s $FILE"
      done
    fi;
  done
else
  echo "Please run from home dir" 
fi;
