{

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    catppuccin.url = "github:catppuccin/nix";
    uwu-colors.url = "github:q60/uwu_colors";
    home-manager = {
      url = "github:nix-community/home-manager";
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
    ytsurf = {
      url = "github:stan-breaks/ytsurf";
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
    flow_state = {
      url = "github:indium114/flow_state";
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
          ./configuration.nix
          inputs.home-manager.nixosModules.home-manager

          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;

            # Pass inputs to home.nix
            home-manager.extraSpecialArgs = {
              inherit inputs;
            };

            home-manager.users.distrorockhopper = {
              imports = [
                ./home.nix
                inputs.catppuccin.homeModules.catppuccin
              ];
            };
          }
        ];
      };

      homeConfigurations."distrorockhopper" = inputs.home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [
          ./home.nix
          inputs.catppuccin.homeModules.catppuccin
        ];
      };

    };

}
