{
  config,
  pkgs,
  inputs,
  ...
}:

{
  imports = [
    ./configs/boot.nix
    ./configs/catppuccin.nix
    ./configs/environment.nix
    ./configs/hardware.nix
    ./configs/locale.nix
    ./configs/networking.nix
    ./configs/packages.nix
    ./configs/packages/external.nix
    ./configs/packages/utilities.nix
    ./configs/packages/wm.nix
    ./configs/packages/languages.nix
    ./configs/packages/productivity.nix
    ./configs/services.nix
    ./configs/users.nix
    ./hardware-configuration.nix
  ];

  # DO NOT EDIT
  system.stateVersion = "26.05";

}
