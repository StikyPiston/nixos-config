{

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    catppuccin.url = "github:catppuccin/nix";
    nvf.url = "github:notashelf/nvf";
    neovim-nightly-overlay = {
      url = "github:nix-community/neovim-nightly-overlay";
    };
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
  };

  outputs = inputs: {

	packages."x86_64-linux".default = 
		(inputs.nvf.lib.neovimConfiguration {
			pkgs = inputs.nixpkgs.legacyPackages."x86_64-linux";
			modules = [ ./configs/nvf.nix ];
		}).neovim;

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
        inputs.nvf.nixosModules.default
        ./configuration.nix
      ];
    };

  };

}
