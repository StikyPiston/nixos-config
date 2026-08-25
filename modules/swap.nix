{
  ...
}:

{

  zramSwap.enable = true;
  swapDevices = [
    {
      device = "/swapfile";
      size = 16384;
    }
  ];

}
