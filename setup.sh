#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -f -s "$DIR"/bash/.bash_git ~/.bash_git
bash ~/.bash_git
