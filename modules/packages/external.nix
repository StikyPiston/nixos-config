{
  pkgs,
  inputs,
  ...
}:

{

  nixpkgs.overlays = [ inputs.ytsurf.overlays.default ];

  environment.systemPackages = [
    inputs.recall.packages.${pkgs.stdenv.hostPlatform.system}.recall
    inputs.hocusfocus.packages.${pkgs.stdenv.hostPlatform.system}.hocusfocus
    inputs.uwu-colors.packages.${pkgs.stdenv.hostPlatform.system}.default
    inputs.fastcards.packages.${pkgs.stdenv.hostPlatform.system}.fastcards
    inputs.theatre.packages.${pkgs.stdenv.hostPlatform.system}.theatre
    inputs.pricetag.packages.${pkgs.stdenv.hostPlatform.system}.pricetag
    inputs.spyglass.packages.${pkgs.stdenv.hostPlatform.system}.spyglass
    inputs.satchel.packages.${pkgs.stdenv.hostPlatform.system}.satchel
    inputs.jots.packages.${pkgs.stdenv.hostPlatform.system}.jots
    inputs.flow_state.packages.${pkgs.stdenv.hostPlatform.system}.default
    pkgs.ytsurf
  ];
}
