{
  pkgs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    wget
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
    gum
    chafa
    yt-dlp
    vhs
    glow
    charm-freeze
    aerc
    yazi
    grex
    jrnl
    croc
    tlrc
    ripgrep
    ncdu
    fd
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
    comma
    wl-clipboard
  ];

  programs.appimage.enable = true;

}
