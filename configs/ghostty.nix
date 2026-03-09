{
  ...
}:

{

  programs.ghostty = {
    enable = true;
    settings = {
      font-family = "Martian Mono Cn Md";
      background-opacity = 0.78;
      window-padding-x = "8,8";
      window-padding-y = "8,8";
      command = "tmux";
      bell-features = [ "no-audio" "attention" ];
    };
  };

}
