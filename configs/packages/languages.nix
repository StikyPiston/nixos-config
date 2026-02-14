{
  pkgs,
  ...
}:

{

  environment.systemPackages = with pkgs; [
    sassc
    tree-sitter
    lua-language-server
    nixfmt
    nixd
    marksman
    pandoc
    typst
  ];

}
