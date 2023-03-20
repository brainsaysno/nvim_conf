return {
  { "aktersnurra/no-clown-fiesta.nvim" },
  {
    "kylechui/nvim-surround",
    -- tag = "*",
    config = function()
      require("nvim-surround").setup {}
    end
  },
  ["nvim-telescope/telescope-fzf-native.nvim"] = { disable = true },
  ["rcarriga/nvim-notify"] = { disable = true },
  {
    "goolord/alpha-nvim",
    opts = function(_, dashboard)
      dashboard.section.header.opts.hl = "Error"
      dashboard.section.header.val = {
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣤⣤⣤⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣠⣤⣤⣤⣤⣄⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⠾⣿⣿⣿⣿⣿⣿⣍⣙⠛⠻⠷⣶⣦⣤⣤⣤⣴⡶⠾⠛⢛⣉⣭⣽⣿⣿⣿⣿⣟⡛⠷⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⠟⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⣀⡀⠈⠉⠉⢀⣀⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣝⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣋⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣹⣿⣿⣿⣿⡿⢿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⢀⣶⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢫⣿⣿⣿⣿⣿⡿⢃⣾⣿⣿⣿⣿⣿⣮⣿⣄⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⢀⣴⢟⣼⣿⣿⣿⣿⣿⣿⣎⣿⡻⣿⣿⣿⣿⣿⣿⣷⡄⠘⢿⣿⣿⣿⠿⠿⠿⢿⣿⣿⡿⢣⣿⣿⣿⣿⣿⣿⣵⡿⠟⢁⣼⣿⣿⣿⣿⣿⣿⣧⡀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⢠⣾⣣⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡙⠟⠋⣉⣠⣤⣤⣤⣤⣤⣼⣶⣶⠶⠿⠷⠶⣤⣤⣤⣤⣤⣤⣬⡙⢿⣿⣿⢖⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄⠀⠀⠀⠀",
        "⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢛⣡⣶⡿⠋⠁⠀⠀⠀⠀⠀⠀⢸⡿⠀⠀⠀⠀⠀⠀⠉⠉⠁⢹⠉⠛⢷⣬⡁⠨⢾⡿⣫⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀",
        "⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⢋⣡⡶⠟⠋⠀⣧⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠂⠀⠀⠈⠻⢷⣤⣺⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀",
        "⢰⣿⣿⣿⣿⡙⠿⠿⠿⣟⣩⡴⣾⠛⠁⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠈⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⠀⠀⠀⠀⢀⡾⠋⠛⢾⣝⡻⣿⣿⣿⣿⣿⣿⣿⣷⣻⣇⠀",
        "⢸⣿⣿⣿⣿⣶⣶⣿⣿⣷⣶⣶⣿⣆⠀⠀⠀⠀⠀⣿⣷⣶⣶⣶⣶⣶⣶⣶⡶⢿⣶⣶⣶⣶⣦⣤⣤⣤⣴⡏⠀⠀⠀⣠⡿⢥⣀⡀⢀⣨⡟⠳⢭⣛⠻⠿⢿⣿⣿⡏⣿⡄",
        "⠈⠻⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⢸⣿⣿⣿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣌⡻⣿⡉⠈⡇⠀⢀⣼⠋⠀⠀⠈⠻⡿⠋⠉⠓⢲⣾⣻⣷⣶⣦⣽⣾⠟⠁",
        "⠀⠀⠀⠀⠹⣿⣿⣿⠛⠶⣭⣛⠿⣿⣿⣿⣦⣀⣀⣼⣿⣿⣯⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣷⣴⣿⣧⣄⣀⣀⣀⣀⣇⣀⣠⡤⢞⣻⣽⣿⣿⣿⣿⣿⣳⡄",
        "⠀⠀⠀⠀⠀⣿⣿⣏⠀⠀⠀⠉⠛⠾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⡿⠻⣿⣿⣿⣿⣿⣿⣿⣶⣤⣤⣍⣉⣉⣛⣛⣛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
        "⠀⠀⠀⠀⠀⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠙⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡟⢁⡴⠛⣿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢿⣿⣿⣿⣿⣿⣿⣿⣿",
        "⠀⠀⠀⠀⢸⣿⣿⠙⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⢿⣿⣿⣿⣿⣿⣿⣿⣷⣿⡆⢠⡆⠀⣿⣿⠋⠻⠿⢿⡟⣿⣿⣿⣿⣿⡏⣿⣿⣿⣿⣿⣿⡄⣿⣿⣿⣿⣿⣿⢿⡿",
        "⠀⠀⠀⠀⢿⣿⡿⢠⡇⠀⢠⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠻⢿⣿⣿⣿⣿⣿⣿⣷⣿⡴⣸⣿⡟⢀⡆⠀⣼⠁⢙⣿⣿⣹⡏⡇⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢋⡾⠁",
        "⠀⠀⠀⠀⠈⠙⠛⠋⠁⠀⣾⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠻⣿⣿⣿⣿⣿⣿⣧⣿⣿⣿⣿⣿⣼⣿⣤⣼⣾⡇⣾⣧⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢟⣱⠟⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⡟⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⢾⣝⡻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⣋⣴⠟⠁⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣿⣷⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠷⣮⣝⡛⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⣩⣴⡾⠛⠁⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⠛⠶⢦⣤⣬⣍⣉⣉⣉⣉⣉⣩⣴⣿⠿⠛⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠉⠉⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "                                                              ",
        "                                                              ",
        "                         ~ be kind ~                          "
      }
      dashboard.section.buttons.val = {}
      dashboard.section.footer.val = ""
    end,
  },
  {
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    setup = function()
      vim.g.mkdp_filetypes = {
        "markdown"
      }
    end,
    ft = { "markdown" },
  },
  {
    'ekickx/clipboard-image.nvim',
  },
  { 'CRAG666/code_runner.nvim',
    config = function()
      require('code_runner').setup({
        filetype = {
          java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
          cpp = "cd $dir && gcc -o $fileNameWithoutExt $fileName && $dir/$fileNameWithoutExt",
          python = "python3 -u",
          typescript = "deno run",
          rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt"
        },
      })
    end,
    requires = 'nvim-lua/plenary.nvim'
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim"
    }
  },
  { -- override nvim-autopairs plugin
    "windwp/nvim-autopairs",
    config = function(plugin, opts)
      -- run default AstroNvim config
      require "plugins.configs.nvim-autopairs" (plugin, opts)
      -- require Rule function
      local Rule = require "nvim-autopairs.rule"
      local npairs = require "nvim-autopairs"
      npairs.add_rule(Rule("$", "$", { "markdown", "tex" }))
    end,
  },
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      require "plugins.configs.luasnip" (plugin, opts) -- include the default astronvim config that calls the setup call
      require("luasnip.loaders.from_lua").lazy_load { paths = { "./lua/user/snippets" } } -- load snippets paths
      require 'luasnip'.config.set_config {
        enable_autosnippets = true,
        store_selection_keys = "<Tab>"
      }
    end,
  },
}
