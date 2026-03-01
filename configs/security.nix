{
  pkgs,
  ...
}:

{

  # security.sudo.extraConfig = ''
  #   Defaults passprompt=" Password: "
  # '';

  security.sudo.enable = false;
  security.doas = {
    enable = true;
    extraRules = [
      {
        groups = [ "wheel" ];
        persist = true;
        keepEnv = true;
      }
    ];
  };

  environment.systemPackages = [
    (pkgs.writeScriptBin "sudo" ''exec doas "$@"'')
  ];

}
