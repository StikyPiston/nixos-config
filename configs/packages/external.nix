{
  pkgs,
  inputs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    inputs.neovim-nightly-overlay.packages.${pkgs.stdenv.hostPlatform.system}.default
    inputs.dotkeeper.packages.${pkgs.stdenv.hostPlatform.system}.dotkeeper
    inputs.recall.packages.${pkgs.stdenv.hostPlatform.system}.recall
    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
    inputs.hocusfocus.packages.${pkgs.stdenv.hostPlatform.system}.hocusfocus
    inputs.uwu-colors.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];
}
