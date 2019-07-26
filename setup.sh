#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -f -s "$DIR"/shell/git ~/.bash_git
ln -f -s "$DIR"/shell/aliases ~/.bash_aliases
ln -f -s "$DIR"/shell/ls ~/.bash_ls
source ~/.bash_git
source ~/.bash_aliases
source ~/.bash_ls
