#!/bin/bash
set -e
initial_path=$(pwd)

REPO="https://github.com/migueweb/laravel-aliases"

# Installation process
cd ${HOME}

# Get repo
curl -fsSL ${REPO}/archive/refs/heads/main.zip >laravel-aliases-main.zip

# Unzip repo
unzip laravel-aliases-main.zip

# Remove zip file
rm laravel-aliases-main.zip

# Rename folder
mv laravel-aliases-main .laravel-aliases

# Go to folder
cd ./.laravel-aliases

# Check if zsh or bash
if [ "$(echo $SHELL)" = "/bin/zsh" ]; then

  php minifier >> ${HOME}/.zshrc
    echo ''
  echo -e "laravel-aliases was added to ~/.zshrc"
  echo -e "\033[32mStart it on Github ⭐️:\033[0m ${REPO}"
  zsh

elif [ "$(echo $SHELL)" = "/bin/bash" ]; then

  php minifier >> ${HOME}/.bashrc
  echo ''
  echo -e "laravel-aliases was added to ~/.bashrc"
  echo -e "\033[32mStart it on Github ⭐️:\033[0m ${REPO}"
  bash

else
  echo -e "\033[31mError:\033[0m Bash or Zsh required or check ${REPO}"
fi

cd $(echo $initial_path)
