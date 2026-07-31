{
  config,
  ...
}:

{
  imports = [
    ./configs/aerc.nix
    ./configs/bat.nix
    ./configs/btop.nix
    ./configs/bulletty.nix
    ./configs/catppuccin.nix
    ./configs/cava.nix
    ./configs/cursor.nix
    ./configs/defaults.nix
    ./configs/drawy.nix
    ./configs/fastfetch.nix
    ./configs/fonts.nix
    ./configs/gh-dash.nix
    ./configs/ghostty.nix
    ./configs/git.nix
    ./configs/gtk.nix
    ./configs/haal.nix
    ./configs/helix.nix
    ./configs/hyprlock.nix
    ./configs/lazygit.nix
    ./configs/mangohud.nix
    ./configs/niri.nix
    ./configs/nushell.nix
    ./configs/qt.nix
    ./configs/quickshell.nix
    ./configs/scripts.nix
    ./configs/spyglass.nix
    ./configs/starship.nix
    ./configs/swaync.nix
    ./configs/television.nix
    ./configs/tmux.nix
    ./configs/waybar.nix
    ./configs/yazi.nix
    ./configs/ytsurf.nix
    ./configs/zathura.nix
  ];

  gtk.gtk4.theme = config.gtk.theme;

  home.username = "indium114";
  home.homeDirectory = "/home/indium114";
  home.stateVersion = "25.11"; # DO NOT EDIT
}
