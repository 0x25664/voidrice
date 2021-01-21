{ config, pkgs, ... }:{
home.packages = with pkgs; [
	# Interface
	hsetroot unclutter breeze-gtk cinnamon.mint-themes lxappearance
	# Utility
	sxiv gotop sxhkd st dmenu scrot
	# Dev
	blender arduino python38 jetbrains.pycharm-community jetbrains.clion fish
	# Misc
	discord viber];
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
		userName = "godjiraX9";
		userEmail = "andrei.ataman@protonmail.com";
	};
	neovim = {
		enable = true;
		plugins = with pkgs.vimPlugins; [
			# Plugins
			polyglot YouCompleteMe vim-startify
			# Themes
			gruvbox airline vim-airline-themes];
		extraConfig = "source /home/andrewSP/voidrice/.config/init.vim";
	};
	fish = {
		interactiveShellInit = "source ~/voidrice/.config/abbr.fish";
	};
};
nixpkgs = {
	config.allowUnfree = true;
	overlays = [(self: super: { dmenu = super.dmenu.override {
	patches = [
		/home/andrewSP/voidrice/.config/diffs/dmenu-cen.diff
		/home/andrewSP/voidrice/.config/diffs/dmenu-border.diff];};})];
	config.st.patches = [/home/andrewSP/voidrice/.config/diffs/st-x.diff]; };}
