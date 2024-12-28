{ config, pkgs, ... }:

{
  programs.alacritty = {
	enable = true;
	package = config.lib.nixGL.wrap pkgs.alacritty;
	settings = {
	  env.TERM = "xterm-256color";
	  window.opacity = 0.96;
	  window.startup_mode = "Windowed";
	  window.decorations_theme_variant = "Dark";
	  font.size = 11;
	  general.import = [
		"~/.config/home-manager/alacritty/themes/tokyonight_storm.toml"
	  ];
	};
  };
}
