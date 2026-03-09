{
  pkgs,
  ...
}:

{

  environment.systemPackages = with pkgs; [
    teeworlds
    mangohud
    prismlauncher
    osu-lazer-bin
    classicube
    wineWow64Packages.stable
    joycond-cemuhook
    cemu
  ];

  programs.steam = {
    enable = true;
    extraCompatPackages = with pkgs; [
      proton-ge-bin
    ];
    package = pkgs.steam.override {
      extraEnv = {
        MANGOHUD = "1";
        GAMEMODERUN = "1";
      };
    };
  };
  programs.gamescope.enable = true;
  programs.gamemode.enable = true;
  services.joycond.enable = true;

}
