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

$env.PATH = ( $env.PATH | prepend "/home/indium114/.scripts" | prepend "/home/indium114/.local/bin" )

use std/dirs

source catppuccin_mocha.nu
source starship.nu
source tv.nu
source zoxide.nu

source aliases.nu
source completers.nu
source direnv.nu
source keybinds.nu

$env.config.show_banner = false
$env.config.edit_mode   = "vi"

$env.BAT_THEME                  = "Catppuccin Mocha"
$env.EDITOR                     = "hx"
$env.GOPATH                     = "/home/indium114/go"
$env.JUST_CHOOSER               = "tv"
$env.PROMPT_INDICATOR_VI_INSERT = ""
$env.PROMPT_INDICATOR_VI_NORMAL = ": "
$env.GPG_TTY                    = (tty)


if not ( "/home/indium114/.recording_mode" | path exists ) {
	recall list
	fastcards amount
	hocusfocus currentsession
}
open ~/.scripts/motds.txt | lines | shuffle | first | print $"󰆈 ($in)"

$env.FZF_DEFAULT_OPTS = "
		--tmux
		--preview 'bat --color=always {}'
		--color=bg+:#313244,bg:#1E1E2E,spinner:#F5E0DC,hl:#F38BA8
		--color=fg:#CDD6F4,header:#F38BA8,info:#CBA6F7,pointer:#F5E0DC
		--color=marker:#B4BEFE,fg+:#CDD6F4,prompt:#CBA6F7,hl+:#F38BA8
		--color=selected-bg:#45475A
		--color=border:#6C7086,label:#CDD6F4"
