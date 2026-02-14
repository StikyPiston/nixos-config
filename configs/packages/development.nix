{
  pkgs,
  ...
}:

{

  environment.systemPackages = with pkgs; [
    helix
    craftos-pc
  ];

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };

}
