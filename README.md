# Dotfiles

## How to use
To use this repo, a few things is need
1. [[#Git]]
3. [[#Stow]]

## List of configs
- Alacritty
- Zsh
- Ohmyzsh(only contains own plugins for alias for apt & dnf)
- Tmux
- Neovim
- Awesome wm(Coming!!!)

## Programs
### Git
Ubuntu/Debian
```bash
sudo apt install git
```

Arch
```bash
sudo pacman -S git
```

 Fedora
```bash
sudo dnf install git
```

### Stow
[Stow](https://www.gnu.org/software/stow/)
Stow is an symlink manager. I use it to automatic version and sync dotfiles

Ubuntu/Debian
```bash
sudo apt install stow
```

Arch
```bash
sudo pacman -S stow
```

Fedora
```bash
sudo dnf install stow
```

### Alacritty
Alacritty is an terminal emulator written in rust. It is gpu accelerated

Ubuntu/Debian
```bash
sudo apt install alacritty
```

Arch
```bash
sudo pacman -S alacritty
```

Fedora
```bash
sudo dnf install alacritty
```

### Tmux
Tmux is used to make working in the terminal easier and make multitasking possible.

Ubuntu/Debian
```bash
sudo apt install tmux
```

Arch
```bash
sudo pacman -S tmux
```

Fedora
```bash
sudo dnf install tmux
```

### Zsh
Zsh is an alternative to bash, which makes it possible to add plugins.

Ubuntu/Debian
```bash
sudo apt install zsh
```

Arch
```bash
sudo pacman -S zsh
```

Fedora
```bash
sudo dnf install zsh
```

After install it you need to change the default shell for the current user
```bash
sudo usermod -s $(which zsh) $USER
```

### Ohmyzsh
Ohmyzsh makes installing plugins and themes for zsh easy. This command uses curl

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Nevim
Coming!!

### Awesomewm
Coming!!
