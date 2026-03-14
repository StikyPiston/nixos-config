{
  ...
}:

{

  programs.yazi = {
    enable = true;
    settings = {
      mgr = {
        ratio = [
          1
          6
          3
        ];
        sort_dir_first = true;
        show_hidden = false;
      };

      preview = {
        wrap = "no";
        image_filter = "nearest";
      };
    };
  };

}
