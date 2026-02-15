{
  pkgs,
  ...
}:

{

  services.openssh.enable = true;
  services.printing = {
    enable = true;
    drivers = [
      pkgs.gutenprint
      pkgs.gutenprintBin
    ];
  };
  services.avahi.enable = true;
  services.displayManager.ly.enable = true;
  services.udisks2.enable = true;
  services.gvfs.enable = true;
  services.flatpak.enable = true;
  services.dbus = {
    enable = true;
    packages = [ pkgs.dconf ];
  };
  services.xserver.enable = true;

  xdg.portal = {
    enable = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-gnome
      pkgs.xdg-desktop-portal-gtk
    ];
    config.common.default = "gtk";
  };

}
