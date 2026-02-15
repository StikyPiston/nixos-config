{
  pkgs,
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
      "lpadmin"
      "scanner"
    ];
    shell = pkgs.nushell;
    packages = with pkgs; [ ];
  };

}
