#!/usr/bin/env nu

let bat_path = "/sys/class/power_supply/BAT0"
let lock_file = "/tmp/.battery"

# Read battery info
let capacity = (open $"($bat_path)/capacity" | into int)
let status = (open $"($bat_path)/status" | str trim)

# Notification logic
if $capacity < 25 {
    if not ($lock_file | path exists) {
        ^notify-send -u critical "󰂃 Low Battery" $"Battery is at ($capacity)%\nPlease plug into power immediately."
        touch $lock_file
    }
} else {
    # Remove lockfile
    if ($lock_file | path exists) {
        rm $lock_file
    }
}
