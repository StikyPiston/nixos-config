{
  pkgs,
  inputs,
  ...
}:

{

  nixpkgs.overlays =  [ inputs.ytsurf.overlays.default ];

  environment.systemPackages = [
    inputs.dotkeeper.packages.${pkgs.stdenv.hostPlatform.system}.dotkeeper
    inputs.recall.packages.${pkgs.stdenv.hostPlatform.system}.recall
    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
    inputs.hocusfocus.packages.${pkgs.stdenv.hostPlatform.system}.hocusfocus
    inputs.uwu-colors.packages.${pkgs.stdenv.hostPlatform.system}.default
    inputs.fastcards.packages.${pkgs.stdenv.hostPlatform.system}.fastcards
    inputs.theatre.packages.${pkgs.stdenv.hostPlatform.system}.theatre
    pkgs.ytsurf
  ];
}
