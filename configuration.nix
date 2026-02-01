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
  services.flatpak = {
    enable = true;
	remotes = [{
		name = "flathub"; location = "https://dl.flathub.org/repo/flathub.flatpakrepo";
	}];
	packages = [
		"org.prismLauncher.PrismLauncher"
		"md.obsidian.Obsidian"
		"org.gnome.World.Secrets"
		"app.zen_browser.zen"
		"org.kde.kdenlive"
		"io.missioncenter.MissionCenter"
		"org.nickvision.tubeconverter"
		"de.haeckerfelix.Fragments"
		"org.videolan.VLC"
		"org.freedesktop.Platform.ffmpeg-full"
		"com.github.tchx84.Flatseal"
		"com.belmoussaoui.Authenticator"
		"org.localsend.localsend_app"
		"org.vinegarhq.Vinegar"
		"org.vinegarhq.Sober"
		"org.freedesktop.Platform.VulkanLayer.MangoHud//24.08"
		"org.winehq.Wine"
	];
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
