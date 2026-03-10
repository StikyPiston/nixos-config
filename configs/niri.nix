{
  ...
}:

{

  xdg.configFile."niri/config.kdl".text = ''
    input {
        keyboard {
            xkb {
        			layout "us"
        			variant "qwerty"
        		}
            numlock
        }

        // Next sections include libinput settings.
        // Omitting settings disables them, or leaves them at their default values.
        touchpad {
            tap
        }

        mouse {
        }

        trackpoint {
        }
    }

    output "eDP-1" {
        mode "1920x1080@60"
        scale 1
        transform "normal"
        position x=1280 y=0
    }

    output "HDMI-A-1" {
    	mode "1280x1024@60.020"
    	scale 1
    	transform "normal"
    	position x=0 y=0
    }

    environment {
    		DISPLAY ":0"
    }

    cursor {
    	xcursor-theme "catppuccin-mocha-dark"
    	xcursor-size 24
    }

    layout {
        gaps 16
        center-focused-column "always"
        preset-column-widths {
            proportion 0.25
            proportion 0.5
            proportion 0.75
    		proportion 0.9
            proportion 0.95
        }

        default-column-width { proportion 0.95; }
        focus-ring {
            width 4
            active-gradient from="#F5BDE6" to="#C6A0F6" angle=45
            inactive-gradient from="#6E738D" to="#24273A" angle=45
        }
        shadow {
            softness 30
            spread 5
            offset x=0 y=5
            color "#0007"
        }
        struts {
            // left 64
            // right 64
            // top 64
            // bottom 64
        }
    }

    // spawn-at-startup "/home/distrorockhopper/.local/bin/mountshare"
    spawn-at-startup "swaync"
    spawn-at-startup "waybar"
    spawn-at-startup "swww-daemon"
    spawn-at-startup "swww" "img" ${./wallpaper.jpg}
    spawn-at-startup "xwayland-satellite"
    spawn-at-startup "alertify"
    spawn-at-startup "systemctl" "--user" "start" "hyprpolkitagent"
    spawn-at-startup "mpd"
    spawn-at-startup "indicator-stickynotes"
    // spawn-at-startup "vicinae" "server" "--open"
    spawn-at-startup "nm-applet"
    spawn-at-startup "protonvpn-app" "--start-minimized"

    screenshot-path "~/Pictures/Screenshots/Screenshot from %Y-%m-%d %H-%M-%S.png"

    animations {
    }

    window-rule {
        match app-id=r#"^org\.wezfurlong\.wezterm$"#
        default-column-width {}
    }

    window-rule {
    	match app-id=r#"^zen"#
    	opacity 0.9
    	draw-border-with-background false
    }

    window-rule {
    	match app-id=r#"^nemo"#
    	opacity 0.9
    	draw-border-with-background false
    }

    window-rule {
    	match app-id=r#"^indicator-stickynotes"#

    	open-floating true

    	max-width 250
    	max-height 200
    }

    window-rule {
    	match title=r#"^Spyglass$"#

    	open-floating true

    	max-width 700
    	max-height 670
    }

    // Open the Firefox picture-in-picture player as floating by default.
    window-rule {
        match app-id=r#"firefox$"# title="^Picture-in-Picture$"
        open-floating true
    }

    window-rule {
        match app-id=r#"^org\.keepassxc\.KeePassXC$"#
        match app-id=r#"^org\.gnome\.World\.Secrets$"#

        block-out-from "screen-capture"
    }

    window-rule {
        geometry-corner-radius 12
        clip-to-geometry true
    }

    binds {
        Mod+Shift+Slash { show-hotkey-overlay; }
        XF86AudioRaiseVolume allow-when-locked=true { spawn "wpctl" "set-volume" "@DEFAULT_AUDIO_SINK@" "0.1+"; }
        XF86AudioLowerVolume allow-when-locked=true { spawn "wpctl" "set-volume" "@DEFAULT_AUDIO_SINK@" "0.1-"; }
        XF86AudioMute        allow-when-locked=true { spawn "wpctl" "set-mute" "@DEFAULT_AUDIO_SINK@" "toggle"; }
        XF86AudioMicMute     allow-when-locked=true { spawn "wpctl" "set-mute" "@DEFAULT_AUDIO_SOURCE@" "toggle"; }

        Mod+O repeat=false { toggle-overview; }

        Mod+Q { close-window; }

        Mod+J { focus-column-left; }
        Mod+K { focus-window-down; }
        Mod+I { focus-window-up; }
        Mod+L { focus-column-right; }

        Mod+Shift+J { move-column-left; }
        Mod+Shift+K { move-window-down; }
        Mod+Shift+I { move-window-up; }
        Mod+Shift+L { move-column-right; }

        Mod+Home { focus-column-first; }
        Mod+End  { focus-column-last; }
        Mod+Ctrl+Home { move-column-to-first; }
        Mod+Ctrl+End  { move-column-to-last; }

        Mod+Shift+Ctrl+J { move-column-to-monitor-left; }
        Mod+Shift+Ctrl+K { move-column-to-monitor-down; }
        Mod+Shift+Ctrl+I { move-column-to-monitor-up; }
        Mod+Shift+Ctrl+L { move-column-to-monitor-right; }

        Mod+Page_Down      { focus-workspace-down; }
        Mod+Page_Up        { focus-workspace-up; }
        Mod+Ctrl+Page_Down { move-column-to-workspace-down; }
        Mod+Ctrl+Page_Up   { move-column-to-workspace-up; }
        Mod+Ctrl+U         { move-column-to-workspace-down; }
        Mod+Ctrl+I         { move-column-to-workspace-up; }

        Mod+Shift+Page_Down { move-workspace-down; }
        Mod+Shift+Page_Up   { move-workspace-up; }

        Mod+WheelScrollDown      cooldown-ms=150 { focus-workspace-down; }
        Mod+WheelScrollUp        cooldown-ms=150 { focus-workspace-up; }
        Mod+Ctrl+WheelScrollDown cooldown-ms=150 { move-column-to-workspace-down; }
        Mod+Ctrl+WheelScrollUp   cooldown-ms=150 { move-column-to-workspace-up; }

        Mod+WheelScrollRight      { focus-column-right; }
        Mod+WheelScrollLeft       { focus-column-left; }
        Mod+Ctrl+WheelScrollRight { move-column-right; }
        Mod+Ctrl+WheelScrollLeft  { move-column-left; }

        Mod+Shift+WheelScrollDown      { focus-column-right; }
        Mod+Shift+WheelScrollUp        { focus-column-left; }
        Mod+Ctrl+Shift+WheelScrollDown { move-column-right; }
        Mod+Ctrl+Shift+WheelScrollUp   { move-column-left; }

        Mod+1 { focus-workspace 1; }
        Mod+2 { focus-workspace 2; }
        Mod+3 { focus-workspace 3; }
        Mod+4 { focus-workspace 4; }
        Mod+5 { focus-workspace 5; }
        Mod+6 { focus-workspace 6; }
        Mod+7 { focus-workspace 7; }
        Mod+8 { focus-workspace 8; }
        Mod+9 { focus-workspace 9; }
        Mod+Shift+1 { move-column-to-workspace 1; }
        Mod+Shift+2 { move-column-to-workspace 2; }
        Mod+Shift+3 { move-column-to-workspace 3; }
        Mod+Shift+4 { move-column-to-workspace 4; }
        Mod+Shift+5 { move-column-to-workspace 5; }
        Mod+Shift+6 { move-column-to-workspace 6; }
        Mod+Shift+7 { move-column-to-workspace 7; }
        Mod+Shift+8 { move-column-to-workspace 8; }
        Mod+Shift+9 { move-column-to-workspace 9; }

        // Alternatively, there are commands to move just a single window:
        // Mod+Ctrl+1 { move-window-to-workspace 1; }

        // Switches focus between the current and the previous workspace.
        // Mod+Tab { focus-workspace-previous; }

        Mod+Comma  { consume-or-expel-window-left; }
        Mod+Period { consume-or-expel-window-right; }

        Mod+R { switch-preset-column-width; }
        Mod+Shift+R { switch-preset-window-height; }
        Mod+Ctrl+R { reset-window-height; }
        Mod+F { maximize-column; }
        Mod+Shift+F { fullscreen-window; }

        Mod+Ctrl+F { expand-column-to-available-width; }

        Mod+C { center-column; }

        // Center all fully visible columns on screen.
        Mod+Ctrl+C { center-visible-columns; }

        Mod+Minus { set-column-width "-10%"; }
        Mod+Equal { set-column-width "+10%"; }

        // Finer height adjustments when in column with other windows.
        Mod+Shift+Minus { set-window-height "-10%"; }
        Mod+Shift+Equal { set-window-height "+10%"; }

        // Move the focused window between the floating and the tiling layout.
        Mod+V       { toggle-window-floating; }
        Mod+Shift+V { switch-focus-between-floating-and-tiling; }

        // Toggle tabbed column display mode.
        // Windows in this column will appear as vertical tabs,
        // rather than stacked on top of each other.
        Mod+W { toggle-column-tabbed-display; }

        Print { screenshot; }
        Ctrl+Print { screenshot-screen; }
        Alt+Print { screenshot-window; }

        Mod+Escape allow-inhibiting=false { toggle-keyboard-shortcuts-inhibit; }

        Mod+Shift+P { power-off-monitors; }

        Mod+Grave { spawn "ghostty" "--title=Spyglass" "-e" "spyglass" "+new-window"; }
        Mod+Ctrl+Grave { spawn "vicinae" "toggle"; }
    	Mod+Return { spawn "ghostty"; }
    	Mod+Shift+Grave { spawn "wlogout" "-b" "4"; }
    	Mod+Semicolon { spawn "flatpak " "run " "app.zen_browser.zen"; }
    	Mod+Alt+L allow-when-locked=true { spawn "hyprlock"; }
    	Mod+N { spawn "swaync-client" "-t"; }
    	Mod+M { spawn "ghostty" "-e" "rmpc"; }
    }

    overview {
    	backdrop-color "#181926";
    }

    prefer-no-csd

    hotkey-overlay {
    	skip-at-startup
    }
  '';

}
