{
  pkgs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    xwayland-satellite
    waybar
    ghostty
    swww
    fastfetch
    hyprpolkitagent
    cava
    cmatrix
    hyprlock
    starship
    rmpc
    btop
    wlogout
    papirus-icon-theme
    (catppuccin-gtk.override {
      variant = "mocha";
      accents = [ "mauve" ];
    })
    catppuccin-cursors.mochaMauve
    pipes
  ];

  programs.niri.enable = true;

}
