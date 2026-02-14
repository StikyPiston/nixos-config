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
    ];

    programs.steam.enable = true;
    programs.gamemode.enable = true;

  }
