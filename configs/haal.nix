{
  ...
}:

{

  xdg.configFile."haal/init.lua".text = ''
    logo_colour = "#94e2d5"

    stats = {
      colour.blue("╭───────────╮"),
      colour.blue("│  user    │") .. " " .. colour.cyan(user.name) .. "@" .. colour.cyan(os.hostname),
      colour.blue("│ 󰣖 os      │") .. " " .. string.lower(os.name),
      colour.blue("│  device  │") .. " " .. string.lower(vendor.name .. " " .. vendor.model),
      colour.blue("│  kernel  │") .. " " .. "linux" .. " " .. string.lower(os.kernel),
      colour.blue("│ 󱂬 wm      │") .. " " .. string.lower(wm.name),
      colour.blue("│  shell   │") .. " " .. string.lower(shell.name),
      colour.blue("│  cpu     │") .. " " .. string.lower(cpu.name),
      colour.blue("│ 󰢮 gpu     │") .. " " .. string.lower(gpu.name),
      colour.blue("│  ram     │") .. " " .. string.format("%.1fgb", mem.used) .. " / " .. string.format("%.1fgb", mem.total) .. " (" .. string.format("%.1f", mem.used / mem.total * 100) .. "%)",
      colour.blue("│  disk    │") .. " " .. string.format("%.1fgb", disk.used) .. " / " .. string.format("%.1fgb", disk.total),
      colour.blue("│  palette │") .. " " .. colour.black("●") .. " " .. colour.white("●") .. " " .. colour.cyan("●") .. " " .. colour.purple("●") .. " " .. colour.blue("●") .. " " .. colour.yellow("●") .. " " .. colour.green("●") .. " " .. colour.red("●"),
      colour.blue("╰───────────╯")
    }
  '';
  xdg.configFile."haal/logo.txt".text = ''
    [34m⠀⠀⠀⠀⠀⠀⢼⣿⣄⠀⠀⠀[36m⠹⣿⣷⡀⠀⣠⣿⡧⠀⠀⠀⠀⠀⠀[0m
    [34m⠀⠀⠀⠀⠀⠀⠈⢿⣿⣆⠀⠀⠀[36m⠘⣿⣿⣴⣿⡿⠁⠀⠀⠀⠀⠀⠀[0m
    [34m⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡜[36m⢿⣿⣟⠀⠀⠀[34m⢀⡄⠀⠀
    [34m⠀⠀⠀⠉⠉⠉⠉[36m⣩⣭⡭[34m⠉⠉⠉⠉⠉[36m⠈⢿⣿⣆⠀[34m⢠⣿⣿⠂⠀⠀[0m
    [36m⠀⠀⠀⠀⠀⠀⣼⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⢻⡟[34m⣡⣿⣿⠃⠀⠀⠀[0m
    [36m⢸⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀[34m⣰⣿⣿⣿⣿⣿⣿⡇[0m
    [36m⠀⠀⠀⢠⣿⣿⢋[34m⣼⣧⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⡟⠀⠀⠀⠀⠀⠀[0m
    [36m⠀⠀⠠⣿⣿⠃⠀[34m⠹⣿⣷⡀[36m⣀⣀⣀⣀⣀[34m⣚⣛⣋[36m⣀⣀⣀⣀⠀⠀⠀[0m
    [36m⠀⠀⠀⠘⠁⠀⠀⠀[34m⣽⣿⣷⡜[36m⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀[0m
    [34m⠀⠀⠀⠀⠀⠀⢀⣾⣿⠟⣿⣿⡄⠀⠀⠀[36m⠹⣿⣷⡀⠀⠀⠀⠀⠀⠀[0m
    [34m⠀⠀⠀⠀⠀⠀⢺⣿⠋⠀⠈⢿⣿⣆⠀⠀⠀[36m⠙⣿⡗⠀⠀⠀⠀⠀⠀[0m
  '';

}
