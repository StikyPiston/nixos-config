{
  config,
  pkgs,
  inputs,
  ...
}:

{

  users.users.distrorockhopper = {
    isNormalUser = true;
    description = "DistroRockhopper";
    extraGroups = [
      "networkmanager"
      "wheel"
      "lp"
      "scanner"
    ];
    shell = pkgs.nushell;
    packages = with pkgs; [ ];
  };

}
