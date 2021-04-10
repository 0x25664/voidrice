{config, pkgs, ... }:{
	nixpkgs.config.st.patches = [/home/andrewSP/Configs/.config/diffs/st-x.diff];
	nixpkgs.config.allowUnfree = true;
	xdg.configFile = {
		"tint2/tint2rc".source = "/home/andrewSP/Configs/.config/tint2/tint2rc";
		#"sxhkd/sxhkdrc".source = "/home/andrewSP/Configs/.config/sxhkd/sxhkdrc";
		#"berry/autostart".source = "/home/andrewSP/Configs/.config/berry/autostart";
	};
	home.packages = with pkgs; [
		# Interface
		hsetroot unclutter breeze-gtk cinnamon.mint-y-icons cinnamon.mint-themes lxappearance tint2
		# Utility
		sxiv sxhkd rofi scrot flameshot alacritty vlc st
		# Dev, Compilers, Lang, Interpreters
		jdk ruby gcc_latest python37 editorconfig-core-c gnumake irony-server llvmPackages.clang
		# Dev Tools, IDEs, Editors
		any-nix-shell ripgrep fd emacs unityhub unity3d
		# Communication
		discord viber tdesktop
		# Internet
		chromium qbittorrent];
	programs = {
		neovim = {
			withPython3 = true;
			viAlias = true;
			enable = true;
			extraConfig = ''source ~/Configs/.config/init.vim'';
			plugins = with pkgs.vimPlugins; [
				# Plugins
				polyglot YouCompleteMe vim-startify
				# Themes
				gruvbox ];
		};
		lf = {
			enable = true;
			settings = {
				drawbox = true;
				color256 = true;
				dirfirst = true;
			};
		};
		git.enable = true;
	};
}
