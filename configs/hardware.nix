{
  config,
  pkgs,
  inputs,
  ...
}:

{
  hardware.graphics.enable = true;
  zramSwap.enable = true;
}
