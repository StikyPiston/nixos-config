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
    sassc
    teeworlds
    loupe
    tree-sitter
    zathura
    mangohud
    lua-language-server
    nixfmt
    nixd
    libreoffice
    nemo-fileroller
    nemo-emblems
    nemo-preview
    soft-serve
    helix
    amfora
    rhythmbox
    craftos-pc
    file-roller
    prismlauncher
    osu-lazer-bin
    pipes
    marksman
    pandoc
    typst
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
