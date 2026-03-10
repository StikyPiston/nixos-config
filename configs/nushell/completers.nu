#     _   __           __         ____
#    / | / /_  _______/ /_  ___  / / /
#   /  |/ / / / / ___/ __ \/ _ \/ / /
#  / /|  / /_/ (__  ) / / /  __/ / /
# /_/ |_/\__,_/____/_/ /_/\___/_/_/
#                            _      _
#   ___ ___  _ __ ___  _ __ | | ___| |_ ___ _ __ ___   _ __  _   _
#  / __/ _ \| '_ ` _ \| '_ \| |/ _ \ __/ _ \ '__/ __| | '_ \| | | |
# | (_| (_) | | | | | | |_) | |  __/ ||  __/ |  \__ \_| | | | |_| |
#  \___\___/|_| |_| |_| .__/|_|\___|\__\___|_|  |___(_)_| |_|\__,_|
#                     |_|

# Zoxide completion

def "nu-complete zoxide path" [context: string] {
    let parts = $context | split row " " | skip 1
    {
      options: {
        sort: false,
        completion_algorithm: substring,
        case_sensitive: false,
      },
      completions: (^zoxide query --list --exclude $env.PWD -- ...$parts | lines),
    }
  }

def --env --wrapped z [...rest: string@"nu-complete zoxide path"] {
  __zoxide_z ...$rest
}

# Carapace completion

let carapace_completer = {|spans|
  carapace $spans.0 nushell ...$spans | from json
}

$env.config = {
  completions: {
    external: {
      enable: true
      completer: $carapace_completer
    }
  }
}
