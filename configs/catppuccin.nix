{
  inputs,
  ...
}:

{

  imports = [
    inputs.catppuccin.homeModules.catppuccin
  ];

  catppuccin = {
    enable = true;
    autoEnable = true;
    flavor = "mocha";
    accent = "mauve";
    cursors.enable = true;
    cursors.accent = "dark";

    cava.transparent = true;
    hyprlock.enable = false;
  };

}
