{
  config,
  pkgs,
  inputs,
  ...
}:

{
  hardware.graphics.enable = true;
  hardware.sane = {
    enable = true;
    extraBackends = [ pkgs.sane-airscan ];
  };
  zramSwap.enable = true;
}
