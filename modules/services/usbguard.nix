{
  ...
}:

{

  services.usbguard = {
    enable = true;
    IPCAllowedUsers = [
      "root"
      "indium114"
    ];
    IPCAllowedGroups = [ "wheel" ];
    rules = ''
      allow id 1d6b:0002 serial "0000:00:14.0" name "xHCI Host Controller" hash "jEP/6WzviqdJ5VSeTUY8PatCNBKeaREvo2OqdplND/o=" parent-hash "rV9bfLq7c2eA4tYjVjwO4bxhm+y6GgZpl9J60L0fBkY=" with-interface 09:00:00 with-connect-type ""
      allow id 1d6b:0003 serial "0000:00:14.0" name "xHCI Host Controller" hash "XCHNkqbiDxI/M86q3Xx/1NPsFNctpAcKPF2KF9AkPpY=" parent-hash "rV9bfLq7c2eA4tYjVjwO4bxhm+y6GgZpl9J60L0fBkY=" with-interface 09:00:00 with-connect-type ""
      allow id 046d:c534 serial "" name "USB Receiver" hash "2Tmol95c6dv//0RiOpMlUD2f72+S/vuJuIfLIZ2rNXc=" parent-hash "jEP/6WzviqdJ5VSeTUY8PatCNBKeaREvo2OqdplND/o=" via-port "1-1" with-interface { 03:01:01 03:01:02 } with-connect-type "hotplug"
      allow id 8087:0a2a serial "" name "" hash "IzBWkmck4sVZ1xeWvrzvafZ33tdLAD+XuHwwloNmm3s=" parent-hash "jEP/6WzviqdJ5VSeTUY8PatCNBKeaREvo2OqdplND/o=" via-port "1-7" with-interface { e0:01:01 e0:01:01 e0:01:01 e0:01:01 e0:01:01 e0:01:01 e0:01:01 } with-connect-type "hardwired"
    '';
  };

}
