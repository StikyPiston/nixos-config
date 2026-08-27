{
  inputs,
  ...
}:

let
  pkgs = inputs.nixpkgs.legacyPackages.x86_64-linux;
in
{

  flake = {
    nixosConfigurations.frosties = inputs.nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";

      specialArgs = {
        inherit inputs;
      };

      modules = [
        {
          # DO NOT EDIT
          system.stateVersion = "26.11";
        }

        {
          nix.settings.experimental-features = [
            "nix-command"
            "flakes"
          ];
        }
        inputs.home-manager.nixosModules.home-manager
        inputs.disko.nixosModules.default
        ../configuration.nix
        ../disk.nix
        ../hardware.nix
        ../modules/default.nix

        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;

          # Pass inputs to home.nix
          home-manager.extraSpecialArgs = {
            inherit inputs;
          };

          home-manager.users.indium114 = {
            imports = [
              ../configs/default.nix
              ../home.nix
            ];
          };
        }
      ];
    };

    homeConfigurations."indium114" = inputs.home-manager.lib.homeManagerConfiguration {
      inherit pkgs;
      modules = [
        inputs.catppuccin.homeModules.catppuccin
        ../configs/default.nix
        ../home.nix
      ];
    };
  };

}
