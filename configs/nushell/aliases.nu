#     _   __           __         ____
#    / | / /_  _______/ /_  ___  / / /
#   /  |/ / / / / ___/ __ \/ _ \/ / /
#  / /|  / /_/ (__  ) / / /  __/ / /
# /_/ |_/\__,_/____/_/ /_/\___/_/_/
#        _ _
#   __ _| (_) __ _ ___  ___  ___   _ __  _   _
#  / _` | | |/ _` / __|/ _ \/ __| | '_ \| | | |
# | (_| | | | (_| \__ \  __/\__ \_| | | | |_| |
#  \__,_|_|_|\__,_|___/\___||___(_)_| |_|\__,_|

alias l  = eza --icons=always --group-directories-first
alias la = l -a
alias ll = l -a1
alias lt = eza --icons=always --group-directories-first --tree --level 1

alias mv    = mv -v
alias cp    = cp -v
alias rm    = rm -v
alias mkdir = mkdir -v
alias tree  = eza --icons=always --group-directories-first --tree --level 1
alias ncdu  = ncdu --color dark --show-percent
alias clear = clear -k

alias nv = nvim

alias gs = git status
alias ga = git add
alias gc = git commit
alias gp = git push
alias gd = git diff
alias gb = git blame

alias sb  = soft browse
alias lg  = lazygit
alias man = tldr
alias sf  = superfile
alias cal = cal -t

alias cd = z

alias da = dirs add
alias dg = dirs goto
alias dr = dirs drop
alias dn = dirs next
alias dp = dirs prev

def chafa [...args] {
  with-env { TERM: xterm-kitty } {
    ^chafa ...$args
  }
}

def --env yz [...args] {
	let tmp = (mktemp -t "yazi-cwd.XXXXXX")
	^yazi ...$args --cwd-file $tmp
	let cwd = (open $tmp)
	if $cwd != $env.PWD and ($cwd | path exists) {
		cd $cwd
	}
	rm -fp $tmp
}
