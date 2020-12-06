{ config, pkgs, ... }:{
home.packages = with pkgs; [
	st
	sxiv
	dmenu
	gotop
	hsetroot
	unclutter
	arc-theme
	breeze-gtk
	lxappearance];
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
		userName = "andrew2jz";
		userEmail = "andrei.ataman@protonmail.com";
	};
	neovim = {
		enable = true;
		plugins = with pkgs.vimPlugins; [
			polyglot
			gruvbox
			airline
			vim-startify
			vim-airline-themes
			YouCompleteMe];
		extraConfig = "source /home/andrew/voidrice/.config/init.vim";
	};
	fish = {
		enable = true;
		interactiveShellInit = "source ~/voidrice/.config/abbr.fish";
	};
};
nixpkgs = {
	overlays = [(self: super: { dmenu = super.dmenu.override {
	patches = [
		/home/andrew/voidrice/.config/diffs/dmenu-cen.diff
		/home/andrew/voidrice/.config/diffs/dmenu-border.diff];};})];
	config.st.patches = [/home/andrew/voidrice/.config/diffs/st-x.diff];
};
xdg.configFile."spectrwm/spectrwm.conf".source =
	"/home/andrew/voidrice/.config/spectrwm/spectrwm.conf";}
