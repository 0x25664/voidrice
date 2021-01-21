abbr --add --global -- build 'time sudo nixos-rebuild switch'
abbr --add --global -- build-home 'time home-manager switch -f ~/voidrice/.config/home.nix'
abbr --add --global -- clean 'sudo nix-store --gc && sudo nix-collect-garbage -d'
abbr --add --global -- install 'nix-env -f '\''<nixpkgs>'\'' -iA'
abbr --add --global -- update 'sudo nix-channel --update && sudo nix-env -u && sudo nixos-rebuild switch && sudo nix-store --optimise'
abbr --add --global -- upgrade 'sudo nixos-rebuild switch --upgrade --verbose'
abbr --add --global -- xload 'xrdb ~/.config/Xresources'

if [ (tty) = /dev/tty1 ]
	startx
end

clear
