#     _   __           __         ____
#    / | / /_  _______/ /_  ___  / / /
#   /  |/ / / / / ___/ __ \/ _ \/ / /
#  / /|  / /_/ (__  ) / / /  __/ / /
# /_/ |_/\__,_/____/_/ /_/\___/_/_/
#                   __ _
#   ___ ___  _ __  / _(_) __ _   _ __  _   _
#  / __/ _ \| '_ \| |_| |/ _` | | '_ \| | | |
# | (_| (_) | | | |  _| | (_| |_| | | | |_| |
#  \___\___/|_| |_|_| |_|\__, (_)_| |_|\__,_|
#                        |___/

$env.PATH = ( $env.PATH | prepend "/home/linuxbrew/.linuxbrew/bin" )
$env.PATH = ( $env.PATH | prepend "/home/distrorockhopper/.local/share/bob/nvim-bin" )
$env.PATH = ( $env.PATH | prepend "/home/distrorockhopper/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/bin" )
$env.PATH = ( $env.PATH | prepend "/home/distrorockhopper/.local/share/bob/nvim-bin" )
$env.PATH = ( $env.PATH | prepend "/home/distrorockhopper/Documents/PlaydateSDK-3.0.2/bin" )
$env.PATH = ( $env.PATH | prepend "/home/distrorockhopper/Applications" )
$env.PATH = ( $env.PATH | prepend "/home/distrorockhopper/.scripts" )
$env.PATH = ( $env.PATH | prepend "/home/distrorockhopper/.cargo/bin" )
$env.PATH = ( $env.PATH | prepend "/home/distrorockhopper/.local/share/gem/ruby/3.4.0/bin" )
$env.PATH = ( $env.PATH | prepend "/home/distrorockhopper/.local/bin" )
$env.PATH = ( $env.PATH | prepend "/home/distrorockhopper/go/bin" )

use std/dirs

source zoxide.nu
source starship.nu
source catppuccin_mocha.nu

source aliases.nu
source completers.nu
source direnv.nu

$env.config.show_banner = false

$env.BAT_THEME         = "Catppuccin Mocha"
$env.EDITOR            = "hx"
$env.PLAYDATE_SDK_PATH = "/home/distrorockhopper/Documents/PlaydateSDK-3.0.2"
$env.GOPATH            = "/home/distrorockhopper/go"

$env.HOMEBREW_NO_ENV_HINTS = 1

recall list
fastcards amount
hocusfocus currentsession
# termfarm stats
open ~/.scripts/motds.txt | lines | shuffle | first | $"󰆈 ($in)"

$env.FZF_DEFAULT_OPTS = "
		--tmux
		--preview 'bat --color=always {}'
		--color=bg+:#313244,bg:#1E1E2E,spinner:#F5E0DC,hl:#F38BA8
		--color=fg:#CDD6F4,header:#F38BA8,info:#CBA6F7,pointer:#F5E0DC
		--color=marker:#B4BEFE,fg+:#CDD6F4,prompt:#CBA6F7,hl+:#F38BA8
		--color=selected-bg:#45475A
		--color=border:#6C7086,label:#CDD6F4"
