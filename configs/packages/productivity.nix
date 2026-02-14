{
  pkgs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    zathura
    libreoffice
    helix
  ];

}
