{
  pkgs,
  ...
}:

{

  environment.systemPackages = with pkgs; [
    tree-sitter
    nixfmt
    nixd
    marksman
    pandoc
    typst
  ];

}
