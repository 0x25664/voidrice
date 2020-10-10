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
		plugins = with pkgs.vimPlugins; [
			YouCompleteMe
			polyglot
			gruvbox
			airline
			fzf-vim
			vim-startify ];
		extraConfig = ''source /home/andrew/voidrice/.config/init.vim'';
	};
	fish = {
		enable = true;
		interactiveShellInit = "source ~/voidrice/.config/abbr.fish";
	};
};
home.packages = with pkgs; [hsetroot gcc fzf sxiv unclutter st dmenu];
nixpkgs = {
	overlays = [(self: super: { dmenu = super.dmenu.override {
	patches = [
		/home/andrew/voidrice/.config/diffs/dmenu-cen.diff
		/home/andrew/voidrice/.config/diffs/dmenu-border.diff];};})];
	config.st.patches = [/home/andrew/voidrice/.config/diffs/st-x.diff];
};
xdg.configFile."spectrwm/spectrwm.conf".source =
	''/home/andrew/voidrice/.config/spectrwm/spectrwm.conf'';
}
