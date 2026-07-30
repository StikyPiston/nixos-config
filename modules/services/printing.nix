{
  pkgs,
  ...
}:

{

  services.printing = {
    enable = true;
    drivers = [
      pkgs.gutenprint
      pkgs.gutenprintBin
      pkgs.cnijfilter2
    ];
  };
  services.avahi.enable = true;

}
