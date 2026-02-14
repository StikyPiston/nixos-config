{
  pkgs,
  ...
}:

  {

    environment.systemPackages = with pkgs; [
      loupe
      rhythmbox
    ];

  }
