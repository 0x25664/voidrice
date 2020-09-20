{ config, pkgs, ... }:
{
programs = {
  zsh = {
    enable = true;
    autocd = true;
    dotDir = ".config/zsh";
    enableCompletion = true;
    enableAutosuggestions = true;
    oh-my-zsh = {
      enable = true;
      theme = "minimal";
    };
    history = {
      save = 10;
      size = 10;
      expireDuplicatesFirst = true;
    };
    loginExtra = "if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec startx -quiet; fi";
    shellAliases = {
      x="vi ~/.config/Xresources";
      xload="xrdb ~/.config/Xresources";
      conf="doas vi /etc/nixos/configuration.nix";
      barconf="vi ~/.config/baraction.sh";
      sconf="vi ~/.config/spectrwm/spectrwm.conf";
      hf="vi ~/voidrice/Haskell/main.hs";
      hfi="ghci ~/voidrice/Haskell/main.hs";
      pp="poweroff -p";
      rp="reboot -p";
      build="time sudo nixos-rebuild switch";
      build-home="time home-manager switch";
      update="sudo nix-channel --update && sudo nix-env -u && build ";
      upgrade="sudo nixos-rebuild switch --upgrade --verbose";
      install="nix-env -f '<nixpkgs>' -iA";
      uninstall="nix-env -e";
      pysource="source .venv/bin/activate";
      pyinstall="pip install";
      pyinit="python -m venv .venv";
      p3="python3";
      clean="doas nix-collect-garbage && doas nix-collect-garbage -d && doas nix-store --gc && doas nix-env --delete-generations && doas nix-store --optimise";
      q="exit";
      c="clear";
      search="nix search";
      bashrc="vi ~/.bashrc";
      mixer="alsamixer";
      rename="mv";
      home="vi .config/nixpkgs/home.nix";
    };
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
    userName = "soyandrew";
    userEmail = "andrei.ataman@protonmail.com";
  };
  neovim = {
    enable = true;
    viAlias = true;
    package = pkgs.neovim-unwrapped;
    plugins = with pkgs.vimPlugins; [ 
      YouCompleteMe
      polyglot 
      indentLine
      airline 
      gruvbox ];
    extraConfig = ''
        set nu
        syntax on
        set nocompatible
        set smartindent
        set noswapfile
        colorscheme gruvbox
        set shiftwidth=2
        set tabstop=2 softtabstop=2 '';
  };
};
news.display = "silent";
}
