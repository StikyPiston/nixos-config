{
  config,
  pkgs,
  inputs,
  ...
}:

{

  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";
    XCURSOR_THEME = "catppuccin-mocha-dark";
    XCURSOR_SIZE = "24";
  };

}
