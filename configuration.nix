{
  pkgs,
  ...
}:

{
  nixpkgs.config.allowUnfree = true;
  nix.package = pkgs.lixPackageSets.stable.lix;

  imports = [
    ./modules/boot.nix
    ./modules/catppuccin.nix
    ./modules/environment.nix
    ./modules/garbagecollector.nix
    ./modules/hardware.nix
    ./modules/kanata.nix
    ./modules/locale.nix
    ./modules/networking.nix
    ./modules/packages/development.nix
    ./modules/packages/external.nix
    ./modules/packages/fonts.nix
    ./modules/packages/gaming.nix
    ./modules/packages/languages.nix
    ./modules/packages/multimedia.nix
    ./modules/packages/productivity.nix
    ./modules/packages/utilities.nix
    ./modules/packages/wm.nix
    ./modules/security.nix
    ./modules/services.nix
    ./modules/users.nix
    ./modules/virtualisation.nix
    ./hardware-configuration.nix
  ];

  # DO NOT EDIT
  system.stateVersion = "26.05";

}
