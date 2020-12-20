{ config, pkgs, ... }:{
home.packages = with pkgs; [
	# Interface
	hsetroot unclutter breeze-gtk lxappearance cinnamon.mint-themes
	# Utility
	sxiv gotop sxhkd st dmenu ];
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
		userName = "andrewSP2jz";
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
		enable = true;
		interactiveShellInit = "source ~/voidrice/.config/abbr.fish";
	};
};
nixpkgs = {
	config.allowUnfree = true;
	overlays = [(self: super: { dmenu = super.dmenu.override {
	patches = [
		/home/andrewSP/voidrice/.config/diffs/dmenu-cen.diff
		/home/andrewSP/voidrice/.config/diffs/dmenu-border.diff];};})];
	config.st.patches = [/home/andrewSP/voidrice/.config/diffs/st-x.diff];
};}
