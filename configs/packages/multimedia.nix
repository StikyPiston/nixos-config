{
  pkgs,
  ...
}:

{

  environment.systemPackages = with pkgs; [
    loupe
    rhythmbox
  ];

  programs.obs-studio.enable = true;

}
