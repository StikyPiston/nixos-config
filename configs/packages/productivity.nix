{
  pkgs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    zathura
    libreoffice
    fontforge
    fontforge-gtk
    fontforge-fonttools
  ];

}
