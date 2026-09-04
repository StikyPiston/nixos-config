{
  pkgs,
  inputs,
  ...
}:

{

  environment.systemPackages = [
    inputs.recall.packages.${pkgs.stdenv.hostPlatform.system}.recall
    inputs.hocusfocus.packages.${pkgs.stdenv.hostPlatform.system}.hocusfocus
    inputs.uwu-colors.packages.${pkgs.stdenv.hostPlatform.system}.default
    inputs.fastcards.packages.${pkgs.stdenv.hostPlatform.system}.fastcards
    inputs.pricetag.packages.${pkgs.stdenv.hostPlatform.system}.pricetag
    inputs.spyglass.packages.${pkgs.stdenv.hostPlatform.system}.spyglass
    inputs.satchel.packages.${pkgs.stdenv.hostPlatform.system}.satchel
    inputs.sorta.packages.${pkgs.stdenv.hostPlatform.system}.sorta
    inputs.rubbish.packages.${pkgs.stdenv.hostPlatform.system}.rubbish
    inputs.ssuika.packages.${pkgs.stdenv.hostPlatform.system}.default
    inputs.bunkers.packages.${pkgs.stdenv.hostPlatform.system}.bunkers
    inputs.haal.packages.${pkgs.stdenv.hostPlatform.system}.haal
    inputs.termfarm.packages.${pkgs.stdenv.hostPlatform.system}.termfarm
    inputs.rsstig.packages.${pkgs.stdenv.hostPlatform.system}.rsstig
  ];
}
