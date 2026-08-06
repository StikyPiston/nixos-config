{
  pkgs,
  ...
}:

{

  # NOTE: these are basic axioms for every host
  nixpkgs.config.allowUnfree = true;
  nix.settings.trusted-users = [
    "root"
    "indium114"
  ];

  nix.package = pkgs.lixPackageSets.stable.lix;

}
