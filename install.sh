#!/bin/bash

if [ "$(echo $SHELL)" = "/bin/zsh" ]; then

    php m.php >> ~/.zshrc;
    echo '';
    echo -e "laravel-aliases was added to ~/.zshrc";
    echo -e "\033[32mStart it on Github:\033[0m https://github.com/migueweb/laravel-aliases";

elif [ "$(echo $SHELL)" = "/bin/bash" ]; then
    
    php m.php >> ~/.bashrc;
    echo '';
    echo -e "laravel-aliases was added to ~/.bashrc";
    echo -e "\033[32mStart it on Github:\033[0m https://github.com/migueweb/laravel-aliases";

else
  echo -e "\e[31mError:\e[0m Bash or Zsh required or check the requirements on https://github.com/migueweb/laravel-aliases";
fi
