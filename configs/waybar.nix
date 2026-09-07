{
  pkgs,
  ...
}:

{

  programs.waybar = {
    enable = true;
    systemd.enable = true;
    settings = {
      mainBar = {
        position = "left";
        layer = "top";
        modules-center = [
          "tray"
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
          on-click = "ghostty +new-window -e ${pkgs.wiremix}/bin/wiremix";
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
        font-family: "MartianMono NF Cond";
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
      #temperature,
      #wireplumber,
      #tray,
      #mode,
      #workspaces,
      #mpris {
        margin-top: 2px;
        margin-bottom: 2px;
        margin-left: 4px;
        margin-right: 4px;
        padding-top: 4px;
        padding-bottom: 4px;
        border-radius: 10px;
        min-width: 0;
      }

      #clock {
        color: @mauve;
      }

      #clock.date {
        color: @mauve;
      }

      #pulseaudio {
        color: @mauve;
      }

      #battery {
        color: @mauve;
      }

      #mpris {
        color: @maroon;
      }

      #tray {
        color: @overlay1;
      }

      #temperature {
        color: @mauve;
      }

      #temperature.warning {
        color: @yellow;
      }

      #temperature.critical {
        color: @red;
      }

      #custom-spacer {
        color: transparent;
        background: transparent;
      }
    '';
  };

}
