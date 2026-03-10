{
  ...
}:

{

  programs.fastfetch = {
    enable = true;
    settings = {
      "$schema" = "https://github.com/fastfetch-cli/fastfetch/raw/dev/doc/json_schema.json";
      "modules" = [
        "break"
        "title"
        {
          "type" = "custom";
          "format" = "─────────────────────────";
        }
        {
          "type" = "os";
          "key" = "󰣖 ";
        }
        {
          "type" = "host";
          "key" = " ";
        }
        {
          "type" = "kernel";
          "key" = " ";
        }
        {
          "type" = "packages";
          "key" = "󰏗 ";
        }
        {
          "type" = "wm";
          "key" = "󱂬 ";
        }
        {
          "type" = "shell";
          "key" = " ";
        }
        {
          "type" = "cpu";
          "key" = " ";
        }
        {
          "type" = "gpu";
          "key" = "󰢮 ";
        }
        {
          "type" = "memory";
          "key" = " ";
        }
        {
          "type" = "disk";
          "key" = " ";
        }
        {
          "type" = "battery";
          "key" = " ";
        }
        "break"
        {
          "type" = "colors";
          "key" = " ";
          "symbol" = "circle";
        }
      ];
    };
  };

}
