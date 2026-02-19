{
  pkgs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    wget
    git
    bat
    tmux
    nwg-displays
    nwg-look
    eza
    swaynotificationcenter
    man
    figlet
    uxplay
    zoxide
    lazygit
    delta
    networkmanagerapplet
    gh
    gum
    chafa
    yt-dlp
    vhs
    glow
    charm-freeze
    aerc
    yazi
    soft-serve
    grex
    jrnl
    croc
    tlrc
    ripgrep
    ncdu
    fd
    git-lfs
    superfile
    television
    lutgen
    ffmpeg
    libXcursor
    fzf
    localsend
    nemo
    nemo-fileroller
    nemo-emblems
    nemo-preview
    file-roller
    amfora
  ];

  programs.appimage.enable = true;

}
