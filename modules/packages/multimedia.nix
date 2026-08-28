{
  pkgs,
  ...
}:

{

  environment.systemPackages = with pkgs; [
    loupe
    rhythmbox
    kdePackages.kdenlive
    playerctl
    vlc
    crosspipe
    wiremix
    blanket
  ];

  programs.obs-studio.enable = true;

}
