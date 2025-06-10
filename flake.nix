{
  description = "Terje's personal jsonresume";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
    dev-flake = {
      url = "github:terlar/dev-flake";
      inputs.flake-parts.follows = "flake-parts";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    systems.url = "github:nix-systems/default";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";

    jsonresume = {
      url = "github:TaserudConsulting/jsonresume-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs:
    inputs.flake-parts.lib.mkFlake {inherit inputs;} {
      systems = import inputs.systems;

      imports = [inputs.dev-flake.flakeModule];

      dev.name = "resume";

      perSystem = {
        lib,
        config,
        system,
        pkgs,
        inputs',
        ...
      }: {
        formatter = pkgs.alejandra;

        packages = {
          builder = inputs'.jsonresume.packages.resumed-elegant;
          inherit (inputs'.jsonresume.packages) fmt-as-json;

          default = pkgs.runCommand "resume" {} ''
            ln -s ${./resume.nix} resume.nix
            HOME=$(mktemp -d) ${lib.getExe config.packages.builder}
            mkdir $out
            cp -v resume.html $out/index.html
            # Copy other resources such as images here...
          '';
        };

        apps.live = {
          type = "app";
          program = lib.pipe config.packages.builder [
            inputs.jsonresume.lib.${system}.buildLiveServer
            lib.getExe
          ];
        };
      };
    };
}
