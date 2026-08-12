{
  pkgs,
  ...
}:

{

  security.sudo.enable = false;

  security.doas = {
    enable = true;
    extraRules = [
      {
        users = [ "indium114" ];
        groups = [ "wheel" ];
        persist = true;
        keepEnv = true;
      }
    ];
  };

  environment.systemPackages = [
    (pkgs.writeScriptBin "sudo" ''exec doas "$@" '')
  ];

  programs.gnupg.agent = {
    enable = true;
    pinentryPackage = pkgs.pinentry-curses;
  };

  security.polkit.enable = true;

}
