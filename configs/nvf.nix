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
