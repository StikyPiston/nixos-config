{
  ...
}:

{

  programs.atuin = {
    enable = true;
    daemon.enable = true;
    settings = {
      db_path = "/home/indium114/.history.db";
      dialect = "uk";
      enter_accept = false;
      inline_height = 25;
      keymap_mode = "vim-normal";
      logs.enabled = false;
      search_mode = "fuzzy";
      secrets_filter = true;
      show_help = false;
      show_numeric_shortcuts = false;
      show_preview = false;
      style = "compact";
      ui.columns = [
        "datetime"
        "exit"
        "command"
      ];
      update_check = false;
    };
  };

}
