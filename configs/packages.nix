{
  config,
  pkgs,
  inputs,
  ...
}:

{

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    soft-serve
    amfora
    craftos-pc
    pipes
  ];

  programs.niri.enable = true;
  programs.obs-studio.enable = true;
  programs.appimage.enable = true;
  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };

}
