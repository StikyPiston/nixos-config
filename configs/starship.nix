{
  ...
}:

{

  programs.starship = {
    enable = true;
    settings = {
      add_newline = false;
      format = "$directory$git_branch$git_status$nix_shell$character";
      character = {
        success_symbol = "[>](bold green)";
        error_symbol = "[<](bold red)";
      };
      directory = {
        style = "bold blue";
        truncation_length = 3;
        truncation_symbol = "…/";
      };
      nix_shell = {
        format = "[$symbol](bold cyan)";
        symbol = "󱄅";
      };
    };
  };

}
