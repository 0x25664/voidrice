{ config, pkgs, ... }:
{
programs = {
  lf = {
    enable = true;
    settings = { color256 = true; drawbox = true; dirfirst = true; };
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
    plugins = with pkgs.vimPlugins; [ polyglot airline gruvbox ];
    extraConfig = "
set nu
syntax on
set bg=dark
set nocompatible
set smartindent
set noswapfile
set nobackup
set shiftwidth=4
colorscheme gruvbox
set tabstop=4 softtabstop=4";
  };
};
}
