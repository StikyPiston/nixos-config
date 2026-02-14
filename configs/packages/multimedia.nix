{
  pkgs,
  ...
}:

{

  environment.systemPackages = with pkgs; [
    loupe
    rhythmbox
    kdenlive
  ];

  programs.obs-studio.enable = true;

}
