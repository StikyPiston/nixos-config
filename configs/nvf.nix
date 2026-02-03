{
  config,
  pkgs,
  inputs,
  ...
}:

{
  vim = {

    # Theming

    theme.enable = true;
    theme.name = "catppuccin";
    theme.style = "mocha";
    theme.transparent = true;

    # Options

    lineNumberMode = "number";
    options = {
      signcolumn = "yes";
      wrap = false;
      tabstop = 4;
      cursorline = true;
      shiftwidth = 4;
      scrolloff = 999;
    };

    ui.borders.globalStyle = "rounded";
    preventJunkFiles = true;
    clipboard = {
      enable = true;
      registers = "unnamedplus";
    };
    globals.mapleader = " ";

    # Lualine
    statusline.lualine = {
      enable = true;
      activeSection = {
        a = [ ''{ "mode" } '' ];
        b = [ ''{ "filename" } '' ];
        c = [ ];
        x = [
          ''{ "filetype" } ''
          ''{ "location" } ''
          ''{ "diff" } ''
        ];
        y = [
          ''{ "lsp_status" } ''
          ''{ "diagnostics" } ''
        ];
        z = [ ];
      };

      sectionSeparator = {
        left = "";
        right = "";
      };

      componentSeparator = {
        left = "";
        right = "";
      };
    };

    # LSP stuff

    lsp.enable = true;
    lsp.trouble.enable = true;
    autocomplete.blink-cmp.enable = true;

    languages = {
      lua.enable = true;
      ruby.enable = true;
      go.enable = true;
      markdown.enable = true;
      typst.enable = true;
    };

    # Keybindings

    keymaps = [
      # Disable hjkli
      {
        mode = [
          "n"
          "v"
          "o"
        ];
        key = "h";
        action = "<Nop>";
      }
      {
        mode = [
          "n"
          "v"
          "o"
        ];
        key = "j";
        action = "<Nop>";
      }
      {
        mode = [
          "n"
          "v"
          "o"
        ];
        key = "k";
        action = "<Nop>";
      }
      {
        mode = [
          "n"
          "v"
          "o"
        ];
        key = "l";
        action = "<Nop>";
      }
      {
        mode = [
          "n"
          "v"
          "o"
        ];
        key = "i";
        action = "<Nop>";
      }

      # Map IJKL as movement keys
      {
        mode = [
          "n"
          "v"
          "o"
        ];
        key = "i";
        action = "k";
      }
      {
        mode = [
          "n"
          "v"
          "o"
        ];
        key = "k";
        action = "j";
      }
      {
        mode = [
          "n"
          "v"
          "o"
        ];
        key = "j";
        action = "h";
      }
      {
        mode = [
          "n"
          "v"
          "o"
        ];
        key = "l";
        action = "l";
      }

      # Map ; → i in normal mode
      {
        mode = "n";
        key = ";";
        action = "i";
      }
    ];

  };

}
