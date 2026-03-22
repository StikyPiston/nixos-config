{
  ...
}:

{

  services.kanata = {
    enable = true;

    keyboards = {
      internalKeyboard = {
        devices = [ "/dev/input/by-path/platform-i8042-serio-0-event-kbd" ];

        config = ''
          (defsrc
            caps
            esc
          )

          (defalias
            modtap (tap-hold 100 100 esc lctrl)
          )

          (deflayer base
            @modtap _
          )
        '';
      };
    };
  };

}
