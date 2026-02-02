{
  config,
  pkgs,
  inputs,
  ...
}:

{

  networking.hostName = "frosties";
  networking.networkmanager.enable = true;
  networking.firewall.enable = false;

}
