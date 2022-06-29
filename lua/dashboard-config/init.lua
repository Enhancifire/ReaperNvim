local db = require('dashboard')
vim.g.dashboard_default_executive = "telescope"

db.custom_header = {
[[]],
[[        ▄▄▄▄▄███████████████████▄▄▄▄▄     ]],
[[      ▄██████████▀▀▀▀▀▀▀▀▀▀██████▀████▄   ]],
[[     █▀████████▄             ▀▀████ ▀██▄  ]],
[[    █▄▄██████████████████▄▄▄         ▄██▀ ]],
[[     ▀█████████████████████████▄    ▄██▀  ]],
[[       ▀████▀▀▀▀▀▀▀▀▀▀▀▀█████████▄▄██▀    ]],
[[         ▀███▄              ▀██████▀      ]],
[[           ▀██████▄        ▄████▀         ]],
[[              ▀█████▄▄▄▄▄▄▄███▀           ]],
[[                ▀████▀▀▀████▀             ]],
[[                  ▀███▄███▀                ]],
[[                     ▀█▀                   ]],
[[]],
}

db.custom_center = {
  {
    icon = "  ",
    desc = "Recent Session              ",
    action = "SessionLoad",
  },
  {
    icon = "  ",
    desc = "Open Files                  ",
    action = "Files",
  },
  {
    icon = "  ",
    desc = "File Browser                ",
    action = "NvimTreeToggle",
  },
  {
    icon = "☣  ",
    desc = "Open Projects               ",
    action = "Telescope projects",
  },
  {
    icon = "  ",
    desc = "Open Personal Dotfiles      ",
    action = "e ~/.config/nvim/init.lua",
  }
}


db.custom_footer = {
  [[]],
  [[☣  WELCOME TO NEOVIM! ☣ ]],
}

