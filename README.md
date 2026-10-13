# dotfiles

## New machine

```sh
git clone https://github.com/mattmontgomery/dotfiles.git ~/dev/personal/dotfiles
~/dev/personal/dotfiles/bootstrap.sh
```

## Brewfile

- `brew bundle dump --file=Brewfile --force` — refresh from what's installed
- `brew bundle check --file=Brewfile` — is anything missing?
- `brew bundle cleanup --file=Brewfile` — list installed things not in the Brewfile (`--force` to remove)

## Shell

`zsh/aliases.zsh` is sourced from `~/.zshrc` (bootstrap adds the line). Keep secrets in `~/.zshrc`, not here.
