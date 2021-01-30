with import <nixpkgs> {};

let
	customPython = pkgs.python38.buildEnv.override {
		extraLibs = with pkgs.python38Packages; [ tqdm tkinter ];
	};
 in

stdenv.mkDerivation {
	name = "Machine-Learning-Env";
	buildInputs = [ customPython ];
	shellHook = ''echo "Get to developing... and good luck!"'';
}
