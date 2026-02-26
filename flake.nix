{

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    catppuccin.url = "github:catppuccin/nix";
    uwu-colors.url = "github:q60/uwu_colors";
    vicinae = {
      url = "github:vicinaehq/vicinae";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    dotkeeper = {
      url = "github:stikypiston/dotkeeper";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    recall = {
      url = "github:stikypiston/recall";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    zen-browser = {
      url = "github:youwen5/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hocusfocus = {
      url = "github:stikypiston/hocusfocus";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    fastcards = {
      url = "github:stikypiston/fastcards";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    ytsurf = {
      url = "github:stan-breaks/ytsurf";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    theatre = {
      url = "github:stikypiston/theatre";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    pricetag = {
      url = "github:stikypiston/pricetag";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs: {

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
      ];
    };

  };

}
