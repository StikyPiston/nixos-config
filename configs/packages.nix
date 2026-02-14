{
  config,
  pkgs,
  inputs,
  ...
}:

{

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    inputs.neovim-nightly-overlay.packages.${system}.default
    wget
    git
    xwayland-satellite
    waybar
    ghostty
    swww
    nemo
    fastfetch
    hyprpolkitagent
    nwg-look
    sassc
    bat
    tmux
    cava
    cmatrix
    nwg-displays
    eza
    swaynotificationcenter
    teeworlds
    man
    figlet
    hyprlock
    loupe
    starship
    rmpc
    btop
    tree
    hyprpicker
    tree-sitter
    uxplay
    zathura
    wlogout
    mangohud
    lf
    vicinae
    inputs.dotkeeper.packages.${pkgs.stdenv.hostPlatform.system}.dotkeeper
    inputs.recall.packages.${pkgs.stdenv.hostPlatform.system}.recall
    zoxide
    lazygit
    colloid-gtk-theme
    papirus-icon-theme
    catppuccin-gtk
    catppuccin-cursors.mochaMauve
    catppuccin-papirus-folders
    lua-language-server
    nixfmt
    nixd
    delta
    networkmanagerapplet
    gh
    libreoffice
    nemo-fileroller
    nemo-emblems
    nemo-preview
    soft-serve
    gum
    viu
    chafa
    feh
    yt-dlp
    vhs
    glow
    freeze
    aerc
    yazi
    grex
    jrnl
    croc
    sysbench
    tlrc
    ripgrep
    helix
    git-lfs
    ncdu
    amfora
    fd
    superfile
    television
    rhythmbox
    craftos-pc
    lutgen
    file-roller
    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
    prismlauncher
    ffmpeg
    osu-lazer-bin
    libXcursor
    fzf
    inputs.hocusfocus.packages.${pkgs.stdenv.hostPlatform.system}.hocusfocus
    pipes
    inputs.uwu-colors.packages.${pkgs.stdenv.hostPlatform.system}.default
    marksman
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
