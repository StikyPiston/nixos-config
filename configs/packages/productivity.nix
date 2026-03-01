{
  pkgs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    zathura
    libreoffice
    inkscape
  ];

}
