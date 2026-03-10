#     _   __           __         ____
#    / | / /_  _______/ /_  ___  / / /
#   /  |/ / / / / ___/ __ \/ _ \/ / /
#  / /|  / /_/ (__  ) / / /  __/ / /
# /_/ |_/\__,_/____/_/ /_/\___/_/_/
#      _ _
#   __| (_)_ __ ___ _ ____   ___ __  _   _
#  / _` | | '__/ _ \ '_ \ \ / / '_ \| | | |
# | (_| | | | |  __/ | | \ V /| | | | |_| |
#  \__,_|_|_|  \___|_| |_|\_(_)_| |_|\__,_|

use std/config *

$env.config.hooks.env_change.PWD = $env.config.hooks.env_change.PWD? | default []

$env.config.hooks.env_change.PWD ++= [{||
  if ( which direnv | is-empty ) {
    return
  }

  direnv export json | from json | default {} | load-env
  $env.PATH = do ( env-conversions ).path.from_string $env.PATH
}]
