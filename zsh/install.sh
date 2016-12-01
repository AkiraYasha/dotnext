#!/bin/sh

if ! [ -d "${HOME}/.zprezto" ]
then
  echo "  Installing Prezto"
  git clone --recursive https://github.com/akirayasha/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
fi
