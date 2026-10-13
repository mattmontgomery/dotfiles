export CLICOLOR=1

# Delete local branches already merged into the current one, keeping main/master.
alias delete_local_branches="git branch --merged | grep -vE '^[*+]|^ *(main|master)$' | xargs -n 1 git branch -d"

# Jump into a Johnny.Decimal folder by number, e.g. `cjd 41`.
cjd() {
  local dirs=(~/Dropbox/*/${1}*(/N))
  (( $#dirs )) || { echo "cjd: no folder matching $1" >&2; return 1; }
  pushd "$dirs[1]"
}
