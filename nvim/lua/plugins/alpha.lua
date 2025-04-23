return {
    "goolord/alpha-nvim",
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        dashboard.section.header.val = {
            "⠀⠀⠀⠀⠀⠀⢀⣀⠀⠀⠀⠀⠀⠀⠀⢱⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
            "⠀⠀⠀⠀⠀⠀⢸⣿⡄⠀⠀⡀⠀⠀⠀⢸⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀ ",
            "⠀⠀⠀⠀⠀⠀⠈⢿⠇⠀⠀⣷⣦⣤⣴⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⢠⣾⣷⡀⠀⠀⣸⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            "⠀⠀⠀⢰⣿⣿⣿⣿⣷⣿⣿⣿⡟⢿⠿⠋⣿⣿⠀⠀⠀⠀⠰⣄⠀⠀⠀⠀",
            "⠀⠀⠀⣾⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⣿⣿⣦⡀⠀⠀⢀⣿⣧⠀⠀⠀",
            "⠀⠀⠀⢹⣿⣿⣿⠙⠻⠟⠋⠁⠀⠀⠀⠀⢿⣿⣿⣿⣶⣶⣿⣿⣿⠀⠀⠀",
            "⠀⠀⠀⠈⣿⣿⣿⡆⠀⠀⢀⣠⡤⠀⠀⠀⠈⠻⣿⡿⣿⣿⣿⣿⡟⠀⠀ ",
            "⠀⠀⠀⠀⠘⠟⠋⣁⣤⡾⢟⣩⣴⣶⣆⠀⠀⠀⠀⢠⣿⣿⣿⠟⠀⠀⠀⠀",
            "⠀⠀⠀⢀⣠⣴⣿⣿⣿⣿⠟⢉⣁⣀⣉⠀⢹⣶⣶⣤⣄⣈⡁⠀⠀⠀⠀ ",
            "⠀⠀⢸⣿⣿⣿⣿⢿⣿⠇⢰⡟⣫⣦⠙⢷⡀⣿⣿⣯⣍⣛⠛⠋⠀⠀⠀⠀",
            "⠀⠀⠀⠛⢋⣡⡾⠟⠋⠀⠸⣧⣙⡟⢁⡾⠁⠿⢿⣿⣿⣭⡉⠁⠀⠀⠀ ",
            "⠀⠀⠀⠀⠈⠁⠀⠀⠀⠀⠀⠈⠙⠛⠋⠀⠀⠀⠀⠀⠈⠉⠉⠀⠀⠀⠀ ",
            "────────────────────────────",
            "           Neovim           "
        }

        dashboard.section.buttons.val = {
           dashboard.button("e",       "New file", "<cmd>ene <CR>"),
           dashboard.button("SPC f f", "Find file"),
           dashboard.button("SPC f h", "Recently opened files"),
           dashboard.button("SPC f g", "Find word"),
           dashboard.button("SPC l",   "Open LazyUI"),
           dashboard.button("q",       "Quit", "<cmd>q! <CR>")
        }

        alpha.setup(dashboard.opts)
    end
}
