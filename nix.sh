#! /bin/bash

#TODO: Make it work using symlink or some other way
sh <(curl -L https://nixos.org/nix/install) --daemon

cp -r $HOME/dotfiles/home-manager $HOME/.config/

echo "Time to run next commands"
