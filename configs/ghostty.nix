{
  ...
}:

{

  programs.ghostty = {
    enable = true;
    settings = {
      font-family = "MartianMono NF Cond Med";
      window-padding-x = "8,8";
      window-padding-y = "8,8";
      command = "tmux";
      bell-features = [
        "no-audio"
        "attention"
      ];
    };
  };

}
