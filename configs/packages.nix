{
  config,
  pkgs,
  inputs,
  ...
}:

{

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    nemo
    teeworlds
    loupe
    mangohud
    nemo-fileroller
    nemo-emblems
    nemo-preview
    soft-serve
    amfora
    rhythmbox
    craftos-pc
    file-roller
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
