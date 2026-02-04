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
    HYPRCURSOR_THEME = "Catppuccin Mocha Mauve";
    HYPRCURSOR_SIZE = "24";
  };

}
