{
  pkgs,
  ...
}:

{

  environment.systemPackages = with pkgs; [
    librewolf
    protonvpn-gui
    wireguard-tools
    fractal
    transmission_4-gtk
    networkmanagerapplet
    aria2
    tuba
  ];

}
