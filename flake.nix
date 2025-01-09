{
  description = "Flake for developing a python project.";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs ={ self, nixpkgs, flake-utils, ... }: {
    devShells = flake-utils.lib.eachDefaultSystem
      (system:
        let
          pkgs = import nixpkgs {
            inherit system;
          };
        in
        with pkgs;
        {
          devShells.default = (pkgs.buildFHSUserEnv {
            name = "uv";
            targetPkgs = pkgs: (
              with pkgs;[
                python312
                uv
              ]
            );
            runScript = "fish";
          }).env;
        }
      );

    templates = {
      default = {
        path = ./.;
      };
    };
  };
}