{
  ...
}:

{

  xdg.configFile."spyglass/applications".source = ./spyglass/applications;
  xdg.configFile."spyglass/web/config.toml".text = ''
    url = "http://127.0.0.1:5000/search?q=%s"
  '';

}
