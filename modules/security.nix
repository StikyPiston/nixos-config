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
        users = [ "distrorockhopper" ];
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
    pinentryPackage = pkgs.pinentry-qt;
  };

}
