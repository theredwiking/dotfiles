{
  config,
  pkgs,
  lib,
  inputs,
  nixGL,
  zen-browser,
  ...
}: {
  nixGL = {
    packages = nixGL.packages; # you must set this or everything will be a noop
    defaultWrapper = "mesa"; # choose from nixGL options depending on GPU
  };

  home = {
    username = "redviking";
    homeDirectory = "/home/redviking";
    stateVersion = "25.05";
    packages = with pkgs; [
      neovim
      zsh
      eza
      fastfetch
      ripgrep
      fzf
      btop
      yazi
      atac
      git
      curl
      wget
	  starship
      (config.lib.nixGL.wrap ghostty)
    ];
  };

  programs.home-manager.enable = true;
}
