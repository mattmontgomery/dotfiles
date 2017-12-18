#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -f -s "$DIR"/bash/.bash_git ~/.bash_git
ln -f -s "$DIR"/bash/.bash_aliases ~/.bash_aliases
ln -f -s "$DIR"/bash/.bash_ls ~/.bash_ls
source ~/.bash_git
source ~/.bash_aliases
source ~/.bash_ls
