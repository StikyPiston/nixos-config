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
    # mindustry-wayland
    cartridges
    supertux
    supertuxkart
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

  programs.gamemode.enable = true;

}
