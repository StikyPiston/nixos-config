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
      pkgs.cnijfilter2
    ];
  };
  services.avahi.enable = true;
  services.displayManager.ly.enable = true;
  services.udisks2.enable = true;
  services.gvfs.enable = true;
  services.dbus = {
    enable = true;
    packages = [ pkgs.dconf ];
  };

  xdg.portal = {
    enable = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-gnome
      pkgs.xdg-desktop-portal-gtk
    ];
    config.common.default = "gtk";
  };

  services.blueman.enable = true;

  systemd.services.fourget = {
    description = "4get";

    after = [ "network.target" ];
    wantedBy = [ "multi-user.target" ];

    serviceConfig = {
      Type = "simple";

      User = "distrorockhopper";
      ExecStart = "${pkgs.docker}/bin/docker run -d -p 8989:80 -e FOURGET_SERVER_NAME='4get' -e FOURGET_PROTO='http' -e FOURGET_SERVER_SHORT_DESCRIPTION='Home 4get instance' luuul/4get:latest";

      Restart = "always";
      RestartSec = 5;
    };
  };

}
