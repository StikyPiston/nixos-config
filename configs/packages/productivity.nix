{
  pkgs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    zathura
    libreoffice
    fontforge-gtk
    fontforge-fonttools
    aerc
  ];

}
