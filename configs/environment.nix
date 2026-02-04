{
  config,
  pkgs,
  inputs,
  ...
}:

{

  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";
    XCURSOR_THEME = "Catppuccin Mocha Dark";
    XCURSOR_SIZE = "24";
  };

}
