#!/usr/bin/env bash

[[ -x `command -v wget` ]] && CMD="wget --no-check-certificate -O -"
[[ -x `command -v curl` ]] >/dev/null && CMD="curl -#L"

if [ -z "$CMD" ]; then
  echo "No curl or wget available. Aborting."
else
  echo "Installing dotfiles"
  mkdir -p "$HOME/.files" && \
  eval "$CMD https://github.com/akirayasha/dotnext/tarball/master | tar -xzv -C ~/.files --strip-components=1 --exclude='{.gitignore}'"
  . "$HOME/.files/scripts/bootstrap"
fi
