#! /bin/bash

langs=$HOME/.local/langs

if [ ! -d $langs ]; then 
	mkdir $langs 
fi

# Good for modifications and editing
./scripts/nvim.sh

# Setups shell
./scripts/zsh.sh
./scripts/starship.sh
./scripts/ohm.zsh
zsh
./scripts/ohm-plugins.sh

# Languages
./scripts/zig.sh
./scripts/go.sh
./scripts/nvm.sh
