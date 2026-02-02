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
    ];
    shell = pkgs.nushell;
    packages = with pkgs; [ ];
  };

}
