{
  ...
}:

{

  programs.hyprlock = {
    enable = true;
    settings = {
      background = [
        {
          path = "screenshot";
          blur_passes = 3;
          contrast = 0.8;
          brightness = 0.8;
          vibrancy = 0.15;
          vibrancy_darkness = 0;
        }
      ];

      label = [
        # date
        {
          text = ''cmd[update:1000] echo -e "$(date +"%A, %B %d")"'';
          color = "rgba(205, 214, 244, 0.7)";
          font_size = 30;
          font_family = "Lato Black";
          position = "0, 400";
          halign = "center";
          valign = "center";
        }
        # Time
        {
          text = ''cmd[update:1000] echo -e "$(date +"%H:%M")"'';
          color = "rgba(205, 214, 244, 0.7)";
          font_size = 85;
          font_family = "Lato Black";
          position = "0, 310";
          halign = "center";
          valign = "center";
        }
        # Username
        {
          text = "$USER";
          color = "rgba(205, 214, 244, 0.7)";
          font_size = 20;
          font_family = "Lato Black";
          position = "0, -360";
          halign = "center";
          valign = "center";
        }
      ];
      image = [
        # Profile picture
        {
          path = "${./pfp.png}";
          size = 110;
          rounding = -1;
          position = "0, -265";
          halign = "center";
          valign = "center";
        }
      ];
      input-field = [
        # Password input
        {
          size = "170, 45";
          outline_thickness = 2;
          dots_size = 0.2;
          dots_spacing = 0.2;
          dots_center = true;
          outer_color = "rgba(0, 0, 0, 0)";
          inner_color = "rgba(166, 173, 200, 0.4)";
          font_color = "rgba(200, 200, 200)";
          fade_on_empty = false;
          font_family = "Lato Black";
          placeholder_text = " Enter password...";
          hide_input = false;
          position = "0, -425";
          halign = "center";
          valign = "center";
        }
      ];
    };
  };

}
