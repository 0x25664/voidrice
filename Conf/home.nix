{ config, pkgs, ... }:{
programs = {
	chromium = {
		enable = true;
		package = pkgs.brave;
	};
	lf = {
		enable = true;
		settings = {
			drawbox = true;
			color256 = true;
			dirfirst = true;
		};
	};
	git = {
		enable = true;
		package = pkgs.gitMinimal;
		userName = "0x25664";
		userEmail = "andrei.ataman@protonmail.com";
	};
	neovim = {
		enable = true;
		viAlias = true;
		plugins = with pkgs.vimPlugins; [ polyglot gruvbox airline fzf-vim vim-startify ];
		extraConfig = '' source /home/andrew/voidrice/Conf/init.vim '';
	};
	fish = {
		enable = true;
		shellAbbrs = {
			xload="xrdb ~/.config/Xresources";
			build="time sudo nixos-rebuild switch";
			build-home="time home-manager switch -f ~/voidrice/Conf/home.nix";
			update="sudo nix-channel --update && sudo nix-env -u && sudo nixos-rebuild switch";
			upgrade="sudo nixos-rebuild switch --upgrade --verbose";
			install="nix-env -f '<nixpkgs>' -iA";
			clean="sudo nix-store --gc && sudo nix-collect-garbage -d";
		};
	};
};
home.packages = with pkgs; [ fzf sxiv hsetroot unclutter st dmenu ];
nixpkgs.config.st.patches = [ /home/andrew/voidrice/Conf/diffs/st-x.diff ];
xdg.configFile."spectrwm/spectrwm.conf".source = "/home/andrew/voidrice/Conf/spectrwm/spectrwm.conf"; }
