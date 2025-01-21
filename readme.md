# Dotfiles for linux setup
Repo of files for recreating linux setup from scratch
Need to improve nix and install cosmic and hyprland

It works using bash scripts

## TODO
- [ ] Make nix installation automated
- [ ] Maybe change to python for more advanced features
- [ ] Automate Cosmic and Hyprland installation

## Installation
1. 
```bash
git clone https://github.com/theredwiking/dotfiles.git
```
2.
```bash
./nix.sh
nix shell github:nix-community/home-manager
```
- In this shell run following command
```bash
home-manager switch --flake ~/.config/home-manager
```
After it is complete exit shell
- Now check version
```bash
home-manager --version
```
3. 
```bash
./setup.sh
```

Now everything should work

## Hyprland
If hyprland if wanted there are 2 ways

### Nix
Still needs some experimentation

### Arch
To install on arch or arch based run following
```bash
sudo pacman -S hyprland hyprpaper hypridle hyprlock wofi waybar swaync
```
