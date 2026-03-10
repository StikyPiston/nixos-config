{
  ...
}:

{
  imports = [
    ./configs/tmux.nix
    ./configs/starship.nix
    ./configs/ghostty.nix
    ./configs/yazi.nix
    ./configs/catppuccin.nix
    ./configs/waybar.nix
    ./configs/gtk.nix
    ./configs/cava.nix
    ./configs/hyprlock.nix
    ./configs/gh-dash.nix
    ./configs/niri.nix
    ./configs/git.nix
    ./configs/lazygit.nix
  ];

  home.username = "distrorockhopper";
  home.homeDirectory = "/home/distrorockhopper";
  home.stateVersion = "25.11"; # DO NOT EDIT
}
