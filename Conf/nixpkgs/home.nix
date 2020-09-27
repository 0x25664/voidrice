{ config, pkgs, ... } : {
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
    package = pkgs.neovim-unwrapped;
    plugins = with pkgs.vimPlugins; [
			vim-css-color
			polyglot
			gruvbox
			airline ];
    extraConfig = ''
        set nu
				syntax on
        set nocompatible
        set smartindent
        set noswapfile
        set noshowmode
        let g:gruvbox_contrast_dark = 'hard'
        colorscheme gruvbox
        set shiftwidth=2
        set tabstop=2 softtabstop=2 
        let g:airline_extensions = []
        let g:airline_powerline_fonts = 1
        let g:airline_highlighting_cache = 1 '';
  };
	fish = {
		enable = true;
    shellAbbrs = {
      x="nvim ~/.config/Xresources";
      xload="xrdb ~/.config/Xresources";
      conf="sudo nvim /etc/nixos/configuration.nix";
      build="time sudo nixos-rebuild switch";
      build-home="time home-manager switch";
      update="sudo nix-channel --update && sudo nix-env -u && build ";
      upgrade="sudo nixos-rebuild switch --upgrade --verbose";
      install="nix-env -f '<nixpkgs>' -iA";
      uninstall="nix-env -e";
      clean="sudo nix-collect-garbage -d && sudo nix-store --gc && sudo nix-env --delete-generations && sudo nix-store --optimise";
      search="nix search";
      mixer="alsamixer";
      home="nvim .config/nixpkgs/home.nix";
    };
	};
};
news.display = "silent";
xdg.configFile."spectrwm/spectrwm.conf".source = "/home/andrew/voidrice/Conf/spectrwm/spectrwm.conf";
}

