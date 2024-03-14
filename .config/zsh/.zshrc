if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$PATH:$HOME/go/bin"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:/usr/bin/Postman"
export PATH="$PATH:/usr/local/go/bin"

export GOROOT="/usr/local/go"
export GOPATH="$HOME/go"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.config/.oh-my-zsh"

# Set zsh theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="false"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Plugins in $ZSH/plugins/ and $ZSH/custom/plugins/
plugins=(git zsh-syntax-highlighting zsh-autosuggestions colored-man-pages zsh-dnf alias-finder frontend-search)

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export EDITOR="nvim"

# Personal alias

#############
#   ALIAS   #
#############

## Conf
alias conf="vim ~/.config/zsh/.zshrc"
alias alc="vim ~/.config/alacritty/alacritty.toml"
alias vimrc="vim ~/.config/nvim/"
alias wall="vim ~/Code/bash-sh/feh.sh"
alias wm="vim ~/.config/awesome/rc.lua"

##Exa
alias la="exa --all -lhg"
alias lt="exa --all -lhTg"

## Tar
alias tarc="tar -czvf"
alias taru="tar -xzvf"

## Dunno
alias py="python3"
alias vim="nvim"
alias tmux="tmux -2"

## SSH
### Commands
alias sshp="ssh-copy-id -i .ssh/id_rsa.pub"

## Projects folder
alias js='cd "$HOME/Code/javascript/$(ls ~/Code/javascript | fzf --reverse)"'
alias golang='cd "$HOME/Code/golang/$(ls ~/Code/golang | fzf --reverse)"'
alias project='cd "$HOME/Code/$(ls ~/Code | fzf --reverse)"'

## Shortcuts
alias pdf='xdg-open'

#############
#    END    #
#############
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Nodejs version manager
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
