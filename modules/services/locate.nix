{
  pkgs,
  ...
}:

{

  services.locate = {
    enable = true;
    package = pkgs.plocate;
    prunePaths = [
      "/tmp"
      "/var/tmp"
      "/var/cache"
      "/media"
      "/nix/store"
      "/home/indium114/.cargo"
      "/home/indium114/go"
      "/home/indium114/.cache"
      "/home/indium114/.librewolf"
      "/home/indium114/.mozilla"
      "/home/indium114/.password-store"
      "/home/indium114/.steam"
    ];
  };

}
