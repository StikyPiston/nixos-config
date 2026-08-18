{
  ...
}:

{

  programs.keepassxc = {
    enable = true;
    autostart = true;
    settings = {
      Browser = {
        Enabled = true;
      };
      GUI = {
        ApplicationTheme = "classic";
        MinimizeOnClose = true;
        MinimizeToTray = true;
        MinimizeOnStartup = true;
        ShowTrayIcon = true;
        TrayIconAppearance = "monochrome-light";
      };
      Security = {
        IconDownloadFallback = true;
      };
    };
  };

}
