{
  ...
}:

{

  services.kanata = {
    enable = true;

    keyboards = {
      internalKeyboard = {
        devices = [ "/dev/input/by-path/*-kbd" ];

        config = ''
          (defsrc
            caps
          )

          (defalias
            modtap (tap-hold 100 100 esc lctrl)
          )

          (deflayer base
            @modtap
          )
        '';
      };
    };
  };

}
