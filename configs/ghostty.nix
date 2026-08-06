{
  ...
}:

{

  programs.ghostty = {
    enable = true;
    settings = {
      font-family = "Monaspace Krypton SemiBold";
      font-feature = [
        "calt"
        "liga"
        "ss01"
        "ss02"
        "ss03"
        "ss04"
        "ss05"
        "ss06"
        "ss07"
        "ss08"
        "ss09"
      ];
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
