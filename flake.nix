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
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";

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

        apps = {
          live = {
            type = "app";
            program = builtins.toString (pkgs.writeShellScript "entr-reload" ''
              ${config.packages.builder}

              ${lib.getExe pkgs.nodePackages.live-server} \
                --watch=resume.html --open=resume.html --wait=300 &

              printf "\n%s" resume.{toml,nix,json} |
                ${lib.getExe pkgs.xe} -s 'test -f "$1" && echo "$1"' |
                ${lib.getExe pkgs.entr} -p ${config.packages.builder}
            '');
          };
        };
      };
    };
}
