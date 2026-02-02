{
  config,
  pkgs,
  inputs,
  ...
}:

{
  imports = [
    ./hardware-configuration.nix
    ./configs/boot.nix
    ./configs/catppuccin.nix
    ./configs/environment.nix
    ./configs/hardware.nix
    ./configs/locale.nix
    ./configs/networking.nix
    ./configs/packages.nix
    ./configs/services.nix
    ./configs/users.nix
  ];

  # DO NOT EDIT
  system.stateVersion = "26.05";

}
