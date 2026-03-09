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
  ];

  home.username = "distrorockhopper";
  home.homeDirectory = "/home/distrorockhopper";
  home.stateVersion = "25.11"; # DO NOT EDIT
}
