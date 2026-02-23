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
    soft-serve
    jujutsu
  ];

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };

}
