{
  config,
  pkgs,
  inputs,
  ...
}:

{
  vim = {

    theme.enable = true;
    theme.name = "catppuccin";
    theme.style = "mocha";

    languages = {
      enableLSP = true;
      enableTreesitter = true;
      lua.enable = true;
      ruby.enable = true;
      go.enable = true;
      markdown.enable = true;
      nix.enable = true;
      typst.enable = true;
    };

    statusline.lualine.enable = true;
    telescope.enable = true;
    autocomplete.nvim-cmp.enable = true;
    lazy.enable = true;

  };

}
