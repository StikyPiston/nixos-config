{
  config,
  pkgs,
  inputs,
  ...
}:

{

  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";
    XCURSOR_THEME = "Catppuccin Mocha Mauve";
    XCURSOR_SIZE = "24";
  };

}
