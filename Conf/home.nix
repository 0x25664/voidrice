{ config, pkgs, ... } : {

home.packages = with pkgs; [ sxiv hsetroot unclutter st gcc dmenu ];

nixpkgs.config = {
	st.patches = [ /home/andrew/voidrice/Conf/diffs/st-x.diff ];
};

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
		plugins = with pkgs.vimPlugins; [ polyglot gruvbox airline ];
		extraConfig = ''
				set nu
				set list
				syntax on
				map Q <nop>
				inoremap jk <ESC>
				inoremap kj <ESC>
				filetype plugin on
				set nocompatible
				set smartindent
				set noswapfile
				set noshowmode
				set shiftwidth=2
				set tabstop=2 softtabstop=2
				autocmd BufWritePost * set noet|retab!
				autocmd BufWritePost Xresources !xrdb %
				autocmd BufWritePost * %s/\s\+$//e
				let g:gruvbox_contrast_dark = 'hard'
				colorscheme gruvbox
				let g:airline#extensions#tabline#enabled = 1
				let g:airline#extensions#tabline#formatter = 'unique_tail'
				let g:airline_powerline_fonts = 1 '';
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
news.display = "silent";
xdg.configFile."spectrwm/spectrwm.conf".source = "/home/andrew/voidrice/Conf/spectrwm/spectrwm.conf"; }
