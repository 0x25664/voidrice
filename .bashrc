#!/bin/sh

### EXPORTS ###
export EDITOR=emacs
export VISUAL=emacs
export BROWSER=brave
### PROMPT ###
export PS1="\[\e[31m\][\[\e[m\]\[\e[33m\]\u\[\e[m\]\[\e[32m\]@\[\e[m\]\[\e[34m\]\h\[\e[m\] \[\e[35m\]\W\[\e[m\]\[\e[31m\]]\[\e[m\]\\$ "
### ALIASES ###
alias conf="nixos-rebuild edit"
alias barconf="emacs ~/.local/share/dwm/autostart.sh"
alias pp="poweroff -p"
alias rp="reboot -p"
alias build="time sudo nixos-rebuild switch"
alias update="sudo nix-channel --update && sudo nix-env -u && build "
alias upgrade="sudo nixos-rebuild switch --upgrade --verbose"
alias install="nix-env -f '<nixpkgs>' -iA"
alias uninstall="nix-env -e"
alias clean="sudo nix-collect-garbage && sudo nix-collect-garbage -d && sudo nix-store --gc && sudo nix-env --delete-generations && sudo nix-store --optimise"
alias q="exit"
alias c="clear"
alias search="nix search"
alias doom="~/.emacs.d/bin/doom"
alias htemp="ghci ~/voidrice/Haskell/main.hs"
alias bashrc="emacs ~/.bashrc"
alias mixer="alsamixer"
alias rename="mv"
### VI MODE IN BASH ###
set -o vi
### AUTOCD ###
shopt -s autocd
