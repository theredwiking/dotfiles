{ config, pkgs, ... }:

{
	programs.zsh = {
      enable = true;
      enableCompletion = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;
	  shellAliases = {
        la = "eza --all -lhg";
        conf = "nvim $HOME/.config/home-manager";
	    hypr = "nvim $HOME/.config/hypr";
		zen = "bash <(curl https://updates.zen-browser.app/appimage.sh)";
		code = "bash ~/.config/home-manager/tmux-sessionizer";
      };
      history = {
        size = 10000;
        path = "${config.xdg.dataHome}/zsh/history";
      };
      plugins = [
        {
          name = "powerlevel10k-config";
          src = ./p10k-config;
          file = "p10k.zsh";
        }
        {
          name = "zsh-powerlevel10k";
          src = "${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/";
          file = "powerlevel10k.zsh-theme";
        }
      ];
      oh-my-zsh = {
        enable = true;
        plugins = [ "git" ];
      };
  };
}
