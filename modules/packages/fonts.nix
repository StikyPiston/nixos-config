{
  pkgs,
  ...
}:

{

  fonts.packages = [
    pkgs.nerd-fonts.martian-mono
    pkgs.monaspace
    pkgs.lato
  ];

  fonts.fontconfig = {
    enable = true;
    defaultFonts = {
      sansSerif = [
        "Lato Black"
      ];
      serif = [
        "Lato Black"
      ];
      monospace = [
        "MartianMono Condensed Semibold"
      ];
    };
  };

}
