{
  ...
}:

{

  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        position = "left";
        layer = "top";
        modules-center = [
          "tray"
          "custom/pacman"
          "temperature"
          "pulseaudio"
          "battery"
          "mpris"
          "niri/workspaces"
          "clock"
        ];
        "clock" = {
          rotate = 90;
          format = "<span foreground='#cba6f7'> </span>{:%H:%M}";
          tooltip-format = "<big>{ =%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
        };
        "battery" = {
          rotate = 90;
          states = {
            warning = 30;
            critical = 15;
          };
          format = "<span size='13000' foreground='#89dceb'>{icon} </span> {capacity}%";
          format-warning = "<span size='13000' foreground='#fab387'>{icon} </span> {capacity}%";
          format-critical = "<span size='13000' foreground='#f38ba8'>{icon} </span> {capacity}%";
          format-charging = "<span size='13000' foreground='#a6e3a1'> </span>{capacity}%";
          format-plugged = "<span size='13000' foreground='#cba6f7'> </span>{capacity}%";
          format-alt = "<span size='13000' foreground='#cba6f7'>{icon} </span> {time}";
          format-full = "<span size='13000' foreground='#cba6f7'>󱟢 </span>{capacity}%";
          format-icons = [
            ""
            ""
            ""
            ""
            ""
          ];
          tooltip-format = "{time}";
        };
        "pulseaudio" = {
          rotate = 90;
          format = "{icon} {volume}%";
          format-muted = " Muted";
          format-icons = {
            default = [
              ""
              ""
              " "
            ];
          };
          on-click = "pavucontrol";
        };
        "mpris" = {
          rotate = 90;
          format = "{player_icon} {dynamic}";
          format-paused = "{status_icon} <i>{dynamic}</i>";
          interval = 1;
          player-icons = {
            default = "";
            vlc = "󱍼";
          };
          status-icons = {
            paused = "";
          };
          max-length = 25;
        };
        "temperature" = {
          rotate = 90;
          hwmon-path = "/sys/class/hwmon/hwmon3/temp1_input";
          critical-threshold = 70;
          warning-threshold = 60;
          format = "{icon} {temperatureC}°C";
          format-icons = [
            ""
            ""
            ""
          ];
        };
        "custom/spacer" = {
          rotate = 90;
          format = "|";
        };
        "niri/workspaces" = {
          "rotate" = 90;
          "format" = "{icon}";
          "on-click" = "activate";
          "format-icons" = {
            "active" = "";
            "urgent" = "";
            "default" = "";
          };
        };
      };
    };
    style = ''
      * {
        font-family: "Martian Mono Condensed SemiBold";
        font-size: 16px;
        min-height: 0;
        font-weight: bold;
        padding: 0;
        margin: 3;
        border: none;
        border-radius: 0px;
      }

      .modules-center {
        background: rgba(17, 17, 27, 0.85);
        border-radius: 24px;
        padding: 2px 1px;
      }

      window#waybar {
        background: transparent;
        color: @mauve;
        /* transition-property: background-color; */
        /* transition-duration: 0.1s; */
        /* border-right: 1px solid @surface0; */
      }

      #window {
        margin: 3px;
        padding-left: 3;
        padding-right: 3;
      }

      button {
        box-shadow: inset 0 -3px transparent;
        border: none;
        border-radius: 0;
      }

      button:hover {
        background: inherit;
        color: @mauve;
      }

      #workspaces button {
        padding: 0 4px;
        border-radius: 16px;
      }

      #workspaces button.focused {
        color: @mauve;
      }

      #workspaces button.active {
        background: linear-gradient(@mauve, @blue);
        border-radius: 16px;
        color: @crust;
        transition: all 0.3s ease-in-out;
      }

      #workspaces button.urgent {
        background-color: @red;
      }

      #pulseaudio,
      #clock,
      #battery,
      #cpu,
      #memory,
      #disk,
      #temperature,
      #backlight,
      #wireplumber,
      #tray,
      #network,
      #mode,
      #scratchpad,
      #custom-pacman,
      #workspaces,
      #mpris {
        margin-top: 2px;
        margin-bottom: 2px;
        margin-left: 4px;
        margin-right: 4px;
        /* padding-left: 4px; */
        /* padding-right: 4px; */
        padding-top: 4px;
        padding-bottom: 4px;
        /* background: rgba(17, 17, 27, 0.85); */
        border-radius: 10px;
        min-width: 0;
      }

      #clock {
        color: @mauve;
        /* border-right: 2px solid @flamingo; */
      }

      #clock.date {
        color: @mauve;
        /* border-right: 2px solid @mauve; */
      }

      #pulseaudio {
        color: @mauve;
        /* border-right: 2px solid @pink; */
      }

      #network {
        color: @peach;
        /* border-right: 2px solid @peach; */
      }

      #idle_inhibitor {
        margin-right: 12px;
        color: #7cb342;
      }

      #idle_inhibitor.activated {
        color: @peach;
      }

      #battery {
        color: @mauve;
        /* border-right: 2px solid @mauve; */
      }

      /* If workspaces is the leftmost module, omit left margin */
      .modules-left > widget:first-child > #workspaces {
        margin-left: 0;
      }

      /* If workspaces is the rightmost module, omit right margin */
      .modules-right > widget:last-child > #workspaces {
        margin-right: 0;
      }

      #custom-vpn {
        color: @peach;
        border-radius: 15px;
        padding-left: 6px;
        padding-right: 6px;
      }

      #mpris {
        color: @maroon;
        /* border-right: 2px solid @maroon; */
      }

      #tray {
        color: @overlay1;
        /* border-right: 2px solid @overlay1; */
      }

      #temperature {
        color: @mauve;
        /* border-right: 2px solid @mauve; */
      }

      #temperature.warning {
        color: @yellow;
      }

      #temperature.critical {
        color: @red;
      }

      #custom-pacman {
        color: @mauve;
        /* border-right: 2px solid @mauve; */
        padding-top: 2px;
        padding-bottom: 2px;
      }

      #custom-spacer {
        color: transparent;
        background: transparent;
      }
    '';
  };

}
