{
  pkgs,
  ...
}:

{

  environment.systemPackages = with pkgs; [
    wget
    bat
    tmux
    eza
    swaynotificationcenter
    man
    figlet
    zoxide
    delta
    chafa
    yt-dlp
    glow
    charm-freeze
    yazi
    croc
    tlrc
    ripgrep
    ncdu
    fd
    television
    lutgen
    ffmpeg
    libXcursor
    fzf
    localsend
    nemo
    nemo-fileroller
    file-roller
    wl-clipboard
    keepassxc
    nh
    nix-output-monitor
    nvd
    carapace
    pass
    home-manager
    cliphist
    gnome-disk-utility
    unzip
    file
    cryptsetup
    caligula
    pika-backup
  ];

  programs.appimage = {
    enable = true;
    binfmt = true;
  };

}
