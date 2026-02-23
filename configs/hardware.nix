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
  zramSwap.enable = true;

  powerManagement.cpuFreqGovernor = "performance";
}
