{
  pkgs,
  ...
}:

{

  environment.systemPackages = with pkgs; [
    nerd-fonts.space-mono
    nerd-fonts.martian-mono
  ];

}
