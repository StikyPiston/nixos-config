{
  ...
}:

{
  nixpkgs.config.allowUnfree = true;

  imports = [
    ./configs/boot.nix
    ./configs/catppuccin.nix
    ./configs/environment.nix
    ./configs/hardware.nix
    ./configs/locale.nix
    ./configs/networking.nix
    ./configs/packages/development.nix
    ./configs/packages/external.nix
    ./configs/packages/fonts.nix
    ./configs/packages/gaming.nix
    ./configs/packages/languages.nix
    ./configs/packages/multimedia.nix
    ./configs/packages/productivity.nix
    ./configs/packages/utilities.nix
    ./configs/packages/wm.nix
    ./configs/services.nix
    ./configs/users.nix
    ./configs/virtualisation.nix
    ./hardware-configuration.nix
  ];

  # DO NOT EDIT
  system.stateVersion = "26.05";

}
