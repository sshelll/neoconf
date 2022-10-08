local status, db = pcall(require, "dashboard")
if not status then
  vim.notify("dashboard was not found, please reinstall it.")
  return
end

db.custom_footer = {
    "",
    "",
    "Welcome, SJL! Enjoy your coding trip right now!",
}

db.custom_center = {
    {
        icon = "                      ",
        desc = "File Explorer                            ",
        action = "NvimTreeToggle",
    },
    {
        icon = "                      ",
        desc = "File Finder                              ",
        action = "Files",
    },
    {
        icon = "                      ",
        desc = "Lazy Git                                 ",
        action = "LazyGit",
    },
    {
        icon = "                      ",
        desc = "Find Text                               ",
        action = "Telescope live_grep",
    },
  -- {
  --   icon = "  ",
  --   desc = "Edit keybindings                    ",
  --   action = "edit ~/.config/nvim/lua/keybindings.lua",
  -- },
   {
     icon = "                 ",
     desc = "Edit .zshrc                        ",
     action = "edit ~/.zshrc",
   },
  -- {
  --   icon = "  ",
  --   desc = "Change colorscheme                  ",
  --   action = "ChangeColorScheme",
  -- },
  -- {
  --   icon = "  ",
  --   desc = "Edit init.lua                       ",
  --   action = "edit ~/.config/nvim/init.lua",
  -- },
  -- {
  --   icon = "  ",
  --   desc = "Find file                           ",
  --   action = "Telescope find_files",
  -- },
}

--db.custom_header = {
    --'███╗   ███╗ █████╗ ██████╗ ██╗ ██████╗ ',
    --'████╗ ████║██╔══██╗██╔══██╗██║██╔═══██╗',
    --'██╔████╔██║███████║██████╔╝██║██║   ██║',
    --'██║╚██╔╝██║██╔══██║██╔══██╗██║██║   ██║',
    --'██║ ╚═╝ ██║██║  ██║██║  ██║██║╚██████╔╝',
    --'╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝ ╚═════╝ ',
    --'                                       ',
    --'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣴⡶⠶⠿⠿⠟⠻⠿⠿⠶⣶⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    --'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣶⠟⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠻⢷⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    --'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⠿⠋⠀⠀⠀⠀⠀⠀⣀⣀⣤⠤⢤⣀⡀⠀⠀⠀⠀⠀⠀⠈⠻⢷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    --'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⠟⠁⠀⠀⠀⠀⠀⢀⡴⠛⣡⡀⠀⠀⣠⣄⠉⠳⣄⠀⠀⠀⠀⠀⠀⠀⠙⢷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    --'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡿⠃⠀⠀⠀⠀⠀⠀⢠⠋⠀⣸⣿⣿⣆⣰⣿⣿⣧⠀⠙⡆⠀⠀⠀⠀⠀⠀⠀⠀⠻⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    --'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⠟⠀⠀⠀⠀⠀⠀⠀⠀⡏⠀⢰⣿⣿⠻⣿⣿⠿⣿⣿⣧⠀⢻⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    --'⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⢳⠀⣿⣿⡟⠀⠘⠋⠀⢸⣿⣿⡇⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    --'⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢦⣙⣛⣁⣠⡤⠤⠤⠤⣭⣥⣠⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    --'⠀⠀⠀⠀⠀⠀⠀⠀⣸⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⠶⠛⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠓⠦⣤⡀⠀⠀⠀⠀⠀⠀⠀⠘⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    --'⠀⠀⠀⠀⠀⠀⠀⠀⣿⠃⠀⠀⠀⠀⠀⠀⢀⡤⠞⠉⠀⠀⠀⢀⣀⣀⣀⣤⣤⣤⣤⣀⣀⣀⡀⠀⠀⠀⠀⠉⠳⢦⡀⠀⠀⠀⠀⠀⢹⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    --'⠀⠀⠀⠀⠀⠀⠀⢠⣿⠀⠀⠀⠀⠀⢀⡴⠋⠀⢀⣠⠴⠚⠋⠉⢁⣀⣤⣤⣤⣤⣤⣤⣤⣬⣍⣙⠓⠶⢤⡀⠀⠀⠙⣦⡀⠀⠀⠀⠈⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    --'⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⣰⠏⠀⣠⠖⠉⣠⣶⣶⣾⣿⠋⠉⠀⠀⠀⠀⠀⠀⢀⣽⣿⣿⣿⣷⣦⣌⡓⠄⠀⠈⢷⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    --'⠀⠀⠀⠀⠀⠀⠀⠀⢿⡆⠀⠀⠀⡏⠀⠘⠁⣠⣾⣿⠿⠿⠿⢿⣷⡀⠀⠀⠀⠀⠀⢀⣿⠿⠛⠛⠛⠿⣧⠈⠻⣦⡀⠀⠸⡇⠀⠀⢀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    --'⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⡀⠀⠀⣇⢀⣴⠟⠉⠽⠁⠀⣀⠤⠤⢌⠳⠀⠀⠀⠀⠀⠚⣡⠴⠦⣤⡀⠀⠙⠀⠀⠈⠻⣦⣠⡇⠀⠀⣸⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    --'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣦⡀⠹⠻⡇⠀⠀⠀⠀⣰⠁⣠⡶⢦⣀⠀⠀⠀⠀⠀⢰⣵⢶⣦⡀⠹⡄⠀⠀⠀⠀⠀⢸⠉⢀⣤⣾⣯⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    --'⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⠋⠈⠛⡆⠀⢇⠀⠀⠀⠀⡇⠀⣿⣄⣀⣿⡇⠀⠀⠀⠀⣿⣅⣀⣿⣧⠀⡇⠀⠀⠀⠀⢀⡏⠀⡟⠁⠀⠙⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    --'⠀⠀⠀⠀⠀⠀⠀⠀⢸⡟⠒⠙⢶⣧⠀⢸⡄⠀⠀⠀⢣⠀⣿⣿⣿⡿⠛⠋⠉⠉⠑⠻⢿⣿⣿⡟⠀⠃⠀⠀⠀⠀⡼⠀⠀⣧⡞⠉⠁⢹⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    --'⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⠀⢀⡤⣿⡀⣀⣷⠀⠀⠀⠀⠣⠘⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⠁⠀⠀⠀⠀⠀⠀⠙⢶⠀⣿⠤⠄⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    --'⠀⠀⣠⣤⣤⣤⣀⠀⠀⢻⣆⠀⠀⠘⣷⠟⠉⠀⣾⣦⣄⡀⢀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⡄⢀⣠⣴⣾⣧⠀⠀⠈⢶⠇⠀⠀⢀⣿⢃⣶⠿⠛⠻⣶⡄⠀⠀⠀',
    --'⠀⣰⡟⠁⠀⠈⢻⣧⠀⠀⢻⣦⡀⠀⣀⠀⠀⠈⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⠄⠀⠀⢀⠀⠀⣠⣾⠃⣾⠇⠀⠀⠀⠈⣿⠀⠀⠀',
    --'⠀⢻⡇⠀⠀⠀⠀⢿⡆⠀⠀⠙⠻⣶⣿⡆⠀⠀⠘⠿⣿⣿⣿⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⡿⠛⠁⠀⠀⠀⣿⣶⡾⠛⠁⢠⣿⠀⠀⠀⠀⠀⣿⠃⠀⠀',
    --'⠀⠸⣷⠀⠀⠀⠀⢸⣧⠀⠀⠀⠀⠀⠘⣷⡀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣦⣤⣤⣀⣤⣤⣾⣿⣿⣿⡿⠟⠁⠀⠀⠀⠀⣼⡟⠀⠀⠀⠀⢸⣿⠀⠀⠀⠀⢠⣿⠀⠀⠀',
    --'⠀⠀⣿⡆⠀⠀⠀⠘⣿⠀⠀⠀⠀⠀⠀⠘⢿⣦⡀⠀⠀⠀⠀⠀⠀⠸⡟⠛⠛⠿⠿⠿⠟⠛⠁⠀⠀⠀⠀⠀⠀⣠⣾⠟⠀⠀⠀⠀⠀⠸⣿⠀⠀⠀⠀⢸⡇⠀⠀⠀',
    --'⠀⠀⢸⣧⠀⠀⠀⠀⣿⣴⣶⣶⣤⠀⠀⠀⠀⠉⣻⣷⣦⣄⡀⠀⠀⠀⠈⠛⠲⠶⠶⠒⢋⡄⠀⠀⠀⢀⣠⣴⡾⠛⠁⠀⠀⢠⡾⠟⠛⢿⣿⠀⠀⠀⠀⣿⣧⡀⠀⠀',
    --'⢀⣶⠟⠛⠀⠀⠀⠀⡟⠁⠀⠀⢹⣷⣦⣤⣶⠟⠛⡟⠉⠉⠛⢶⣤⡀⠀⠉⠒⠒⠒⠊⠁⠀⠀⣠⡾⠟⢻⡟⠻⠷⣦⣴⠿⢿⡇⠀⠀⠀⠹⠀⠀⠀⠀⠋⠉⠻⣦⠀',
    --'⣾⠇⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠘⠁⠈⠻⡀⠀⠀⡇⠀⠀⠀⢸⠀⠙⠓⠦⢤⣀⣀⣤⠤⠶⣟⠁⠀⠀⠀⣇⠀⠀⢸⠏⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⡇',
    --'⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢣⠀⢀⠃⠀⠀⠀⠘⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⠀⠀⠀⠀⢸⠀⠀⣾⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇',
    --'⠸⣷⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⢸⠀⢸⠀⣀⣀⡀⠀⠧⠤⢀⣀⣀⣀⣀⣀⡀⠤⠿⠀⢀⣤⣄⡀⣇⠀⢻⠀⠀⠀⠀⠀⠀⠀⢀⠀⣀⠀⠀⠀⠀⢀⣿⠃',
    --'⠀⠹⣷⡀⠀⢲⡀⢷⠘⣆⠀⠀⠀⠀⠀⠀⣾⠀⢸⣾⠉⠉⠙⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⠋⠉⠻⣿⠀⠸⣆⠀⠀⠀⠀⠀⢀⡞⢀⡟⢠⠏⠀⢀⣾⠏⠀',
    --'⠀⠀⠘⠿⣦⣀⠁⠀⠁⠈⠀⠀⠀⠀⣠⢾⣏⣠⡿⢿⣄⣀⣼⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣄⣀⣰⣿⢷⣄⣿⡓⠄⡀⠀⠀⠈⠀⠈⠀⢀⣠⣴⠟⠁⠀⠀',
    --'⠀⠀⠀⠀⠈⠙⠻⠷⣶⣤⣄⣀⣀⣩⣴⠿⢻⡿⠀⠀⠀⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠛⠋⠁⠀⢻⣏⠻⣶⣤⣤⣤⣤⣴⡶⠿⠛⠋⠁⠀⠀⠀⠀',
    --'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠉⠀⢠⣿⢧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢈⣿⡀⠀⠈⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    --'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠊⢹⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    --'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    --'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠻⢷⣦⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⡾⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    --'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠛⠿⠷⠶⠶⣶⣶⣶⣶⣶⣶⣶⣶⡶⠶⠿⠟⠛⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    --'',
--}

db.custom_header = {
 '',
 '',
 '',
 '',
 '',
 '',
 '',
 '     ██╗██╗ █████╗ ██╗     ███████╗       ███████╗██╗  ██╗ █████╗  ██████╗ ',
 '     ██║██║██╔══██╗██║     ██╔════╝       ██╔════╝██║  ██║██╔══██╗██╔═══██╗',
 '     ██║██║███████║██║     █████╗         ███████╗███████║███████║██║   ██║',
 '██   ██║██║██╔══██║██║     ██╔══╝         ╚════██║██╔══██║██╔══██║██║   ██║',
 '╚█████╔╝██║██║  ██║███████╗███████╗██╗    ███████║██║  ██║██║  ██║╚██████╔╝',
 ' ╚════╝ ╚═╝╚═╝  ╚═╝╚══════╝╚══════╝╚═╝    ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ',
 '',
 '',
 '',
 '',
 '',
}
