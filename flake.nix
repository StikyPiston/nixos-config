{

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    catppuccin.url = "github:catppuccin/nix";
    uwu-colors.url = "github:q60/uwu_colors";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    disko = {
      url = "github:nix-community/disko";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    recall = {
      url = "github:indium114/recall";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hocusfocus = {
      url = "github:indium114/hocusfocus";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    fastcards = {
      url = "github:indium114/fastcards";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    theatre = {
      url = "github:indium114/theatre";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    pricetag = {
      url = "github:indium114/pricetag";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    spyglass = {
      url = "github:indium114/spyglass";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    satchel = {
      url = "github:indium114/satchel";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    jots = {
      url = "github:indium114/jots";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    sorta = {
      url = "github:indium114/sorta";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    rubbish = {
      url = "github:indium114/rubbish";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    ssuika = {
      url = "git+https://codeberg.org/indium114/ssuika";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    bunkers = {
      url = "github:indium114/bunkers";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    haal = {
      url = "github:indium114/haal";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    termfarm = {
      url = "github:indium114/termfarm";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    omnisearch = {
      url = "github:indium114/omnisearch-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    inputs:
    let
      pkgs = inputs.nixpkgs.legacyPackages.x86_64-linux;
    in
    {

      nixosConfigurations.frosties = inputs.nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";

        specialArgs = {
          inherit inputs;
        };

        modules = [
          {
            nix.settings.experimental-features = [
              "nix-command"
              "flakes"
            ];
          }
          inputs.catppuccin.nixosModules.catppuccin
          inputs.home-manager.nixosModules.home-manager
          inputs.disko.nixosModules.default
          inputs.omnisearch.nixosModules.default
          ./configuration.nix

          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;

            # Pass inputs to home.nix
            home-manager.extraSpecialArgs = {
              inherit inputs;
            };

            home-manager.users.indium114 = {
              imports = [
                inputs.catppuccin.homeModules.catppuccin
                ./home.nix
              ];
            };
          }
        ];
      };

      homeConfigurations."indium114" = inputs.home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [
          inputs.catppuccin.homeModules.catppuccin
          ./home.nix
        ];
      };

    };

}
