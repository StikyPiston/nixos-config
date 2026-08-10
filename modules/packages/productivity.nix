{
  pkgs,
  ...
}:

{

  environment.systemPackages = with pkgs; [
    zathura
    libreoffice
    aerc
    drawy
    presenterm
  ];

}
