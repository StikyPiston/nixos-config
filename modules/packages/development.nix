{
  pkgs,
  ...
}:

{

  environment.systemPackages = with pkgs; [
    helix
    craftos-pc
    git
    git-lfs
    gh
    just
    forgejo-cli
    lazygit
    arduino-ide
    python313
  ];

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };

}
