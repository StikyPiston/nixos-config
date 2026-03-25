{
  ...
}:

{

  programs.television = {
    enable = true;
  };
  xdg.configFile."television/cable".source = ./television/cable;

}
