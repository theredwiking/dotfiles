#! /bin/bash

ln -s $HOME/dotfiles/starship $HOME/.config/

echo 'export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"' >> $HOME/.zshenv
