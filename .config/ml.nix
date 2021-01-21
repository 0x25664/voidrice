with import <nixpkgs> {};

let
	customPython = pkgs.python38.buildEnv.override {
		extraLibs = with pkgs.python38Packages; [ joblib sklearn-deap jupyterlab pytorch pandas numpy ];
	};
 in

stdenv.mkDerivation {
	name = "Machine-Learning-Env";
	buildInputs = [ customPython jupyter ];
	shellHook = ''echo "Get to developing... and good luck!"'';
}
