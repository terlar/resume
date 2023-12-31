{
  description = "Terje's personal jsonresume";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    jsonresume-nix = {
      url = "github:TaserudConsulting/jsonresume-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    dev-flake = {
      url = "github:terlar/dev-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    flake-parts,
    nixpkgs,
    systems,
    ...
  } @ inputs:
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = import systems;

      imports = [inputs.dev-flake.flakeModule];

      dev.name = "resume";

      perSystem = {
        config,
        pkgs,
        inputs',
        ...
      }: {
        formatter = pkgs.alejandra;

        packages = {
          builder = inputs'.jsonresume-nix.packages.resumed-elegant;
          inherit (inputs'.jsonresume-nix.packages) fmt-as-json;

          default = pkgs.runCommand "resume" {} ''
            ln -s ${./resume.nix} resume.nix
            HOME=$(mktemp -d) ${config.packages.builder}
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

              ${nixpkgs.lib.getExe pkgs.nodePackages.live-server} \
                --watch=resume.html --open=resume.html --wait=300 &

              printf "\n%s" resume.{toml,nix,json} |
                ${nixpkgs.lib.getExe pkgs.xe} -s 'test -f "$1" && echo "$1"' |
                ${nixpkgs.lib.getExe pkgs.entr} -p ${config.packages.builder}
            '');
          };
        };
      };
    };
}
