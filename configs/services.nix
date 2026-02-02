{
  config,
  pkgs,
  inputs,
  ...
}:

{

  services.openssh.enable = true;
  services.printing.enable = true;
  services.avahi.enable = true;
  services.displayManager.ly.enable = true;
  services.udisks2.enable = true;
  services.gvfs.enable = true;
  services.flatpak.enable = true;
  services.dbus.enable = true;

  xdg.portal = {
    enable = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-gtk
    ];
    config.common.default = "gtk";
  };

}
