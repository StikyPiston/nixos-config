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
      "libvirtd"
    ];
    shell = pkgs.nushell;
    packages = with pkgs; [ ];
  };

}
