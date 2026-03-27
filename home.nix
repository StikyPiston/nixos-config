{
  config,
  ...
}:

{
  imports = [
    ./configs/bat.nix
    ./configs/btop.nix
    ./configs/catppuccin.nix
    ./configs/cava.nix
    ./configs/defaults.nix
    ./configs/fastfetch.nix
    ./configs/gh-dash.nix
    ./configs/ghostty.nix
    ./configs/gtk.nix
    ./configs/helix.nix
    ./configs/hyprlock.nix
    ./configs/lazygit.nix
    ./configs/mangohud.nix
    ./configs/niri.nix
    ./configs/nushell.nix
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

  home.username = "distrorockhopper";
  home.homeDirectory = "/home/distrorockhopper";
  home.stateVersion = "25.11"; # DO NOT EDIT
}
