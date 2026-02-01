{
  config,
  pkgs,
  inputs,
  ...
}:

{
  imports = [
    ./hardware-configuration.nix
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.kernelPackages = pkgs.linuxPackages_latest;

  networking.hostName = "frosties";
  networking.networkmanager.enable = true;

  time.timeZone = "Africa/Johannesburg";

  i18n.defaultLocale = "en_ZA.UTF-8";

  services.xserver.xkb = {
    layout = "za";
    variant = "";
  };

  users.users.distrorockhopper = {
    isNormalUser = true;
    description = "DistroRockhopper";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    shell = pkgs.nushell;
    packages = with pkgs; [ ];
  };

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
    xdg-desktop-portal-gnome
    wlogout
    mangohud
    lf
    vicinae
    inputs.dotkeeper.packages.${pkgs.system}.dotkeeper
    inputs.recall.packages.${pkgs.system}.recall
    zoxide
    lazygit
    colloid-gtk-theme
    papirus-icon-theme
    catppuccin-gtk
    catppuccin-cursors
    catppuccin-papirus-folders
    lua-language-server
    nixfmt
    nixd
    delta
    networkmanagerapplet
    gh
    libreoffice
  ];

  programs.niri.enable = true;
  programs.obs-studio.enable = true;
  programs.steam.enable = true;

  services.openssh.enable = true;
  services.printing.enable = true;
  services.avahi.enable = true;
  services.displayManager.ly.enable = true;
  services.udisks2.enable = true;
  services.gvfs.enable = true;
  services.flatpak.enable = true;

  systemd.services.flatpak-system-packages = {
    description = "Install flatpaks";
    wantedBy = [ "multi-user.target" ];
    after = [ "network-online.target" ];
    wants = [ "network-online.target" ];

    serviceConfig = {
      Type = "oneshot";
      RemainAfterExit = true;
    };

    script = ''
      		set -e

      		flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

      		flatpak install -y --system flathub \
      			org.prismlauncher.PrismLauncher
      			md.obsidian.Obsidian
      			org.gnome.World.Secrets
      			app.zen_browser.zen
      			org.kde.kdenlive
      			org.nickvision.tubeconverter
      			de.schmidhuberj.tubefeeder
      			de.haeckerfelix.Fragments
      			org.gnome.World.PikaBackup
      			org.freedesktop.Platform.ffmpeg-full//24.08
      			org.freedesktop.Platform.VulkanLayer.MangoHud//25.08
      			com.github.tchx84.Flatseal
      			com.belmoussaoui.Authenticator
      			org.localsend.localsend_app
      			org.freedesktop.Platform.VulkanLayer.MangoHud//24.08
      			org.vinegarhq.Vinegar
      			org.vinegarhq.Sober
      			org.winehq.Wine//stable-25.08
      	'';
  };

  networking.firewall.enable = false;

  catppuccin = {
    enable = true;
    accent = "mauve";
    flavor = "mocha";
  };

  # DO NOT EDIT
  system.stateVersion = "26.05";

}
