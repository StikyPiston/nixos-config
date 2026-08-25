{
  pkgs,
  ...
}:

{
  hardware.graphics.enable = true;
  hardware.sane = {
    enable = true;
    extraBackends = [ pkgs.sane-airscan ];
  };

  hardware.bluetooth.enable = true;
}
