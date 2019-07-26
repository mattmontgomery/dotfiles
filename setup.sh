#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cat $DIR/shell/git $DIR/shell/aliases $DIR/shell/ls > $DIR/.aliases 

echo 'Wrote combined file at $DIR/.aliases'

CMD="source $DIR/.aliases"

if grep --quiet $CMD ~/.zshrc; then
  echo "Already in zshrc"
else
  echo '$CMD' >> ~/.zshrc
fi

$CMD
