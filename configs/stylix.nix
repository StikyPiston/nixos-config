{
  config,
  pkgs,
  inputs,
  ...
}:

{

  stylix.enable = true;

  stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";

  stylix.cursor = {
    package = pkgs.catppuccin-cursors;
    name = "Catppuccin Mocha Mauve";
  };

}
