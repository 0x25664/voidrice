export PS1="\[\e[31m\][\[\e[m\]\[\e[33m\]\u\[\e[m\]\[\e[32m\]@\[\e[m\]\[\e[34m\]\h\[\e[m\] \[\e[31m\]\W\[\e[m\]\[\e[31m\]]\[\e[m\]\\$ "

alias build="time sudo nixos-rebuild switch"
alias build-home="time home-manager switch -f ~/voidrice/.config/home.nix"
alias clean="sudo nix-store --gc && sudo nix-collect-garbage -d"
alias install="nix-env -f '\''<nixpkgs>'\'' -iA"
alias update="sudo nix-channel --update && sudo nix-env -u && sudo nixos-rebuild switch && sudo nix-store --optimise"
