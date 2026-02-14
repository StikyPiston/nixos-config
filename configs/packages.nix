{
  config,
  pkgs,
  inputs,
  ...
}:

{

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    teeworlds
    mangohud
    soft-serve
    amfora
    craftos-pc
    prismlauncher
    osu-lazer-bin
    pipes
  ];

  programs.niri.enable = true;
  programs.obs-studio.enable = true;
  programs.steam.enable = true;
  programs.gamemode.enable = true;
  programs.appimage.enable = true;
  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };

}
