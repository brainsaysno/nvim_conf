--              AstroNvim Configuration Table
-- All configuration changes should go inside of the table below

-- You can think of a Lua "table" as a dictionary like data structure the
-- normal format is "key = value". These also handle array like data structures
-- where a value with no key simply has an implicit numeric key
--
--

local config = {
  -- Set colorscheme to use
  colorscheme = "no-clown-fiesta",
  -- set vim options here (vim.<first_key>.<second_key> = value)
  options = {
    opt = {
      -- set to true or false etc.
      guicursor = "",
      relativenumber = true, -- sets vim.opt.relativenumber
      number = true, -- sets vim.opt.number
      spell = false, -- sets vim.opt.spell
      signcolumn = "auto", -- sets vim.opt.signcolumn to auto
      wrap = false, -- sets vim.opt.wrap
    },
    g = {
      mapleader = " ", -- sets vim.g.mapleader
      autoformat_enabled = true, -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
      cmp_enabled = true, -- enable completion at start
      autopairs_enabled = true, -- enable autopairs at start
      diagnostics_enabled = true, -- enable diagnostics at start
      status_diagnostics_enabled = true, -- enable diagnostics in statusline
      icons_enabled = true, -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
      ui_notifications_enabled = true, -- disable notifications when toggling UI elements
      heirline_bufferline = false, -- enable new heirline based bufferline (requires :PackerSync after changing)
    },
  },
  -- If you need more control, you can use the function()...end notation
  -- options = function(local_vim)
  --   local_vim.opt.relativenumber = true
  --   local_vim.g.mapleader = " "
  --   local_vim.opt.whichwrap = vim.opt.whichwrap - { 'b', 's' } -- removing option from list
  --   local_vim.opt.shortmess = vim.opt.shortmess + { I = true } -- add to option list
  --
  --   return local_vim
  -- end,

  -- Set dashboard header
  header = {
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
    -- "                       .,,uod8B8bou,,.",
    -- "              ..,uod8BBBBBBBBBBBBBBBBRPFT?l!i:.",
    -- "         ,=m8BBBBBBBBBBBBBBBRPFT?!||||||||||||||",
    -- "         !...:!TVBBBRPFT||||||||||!!^^\"\"'   ||||",
    -- "         !.......:!?|||||!!^^\"\"'            ||||",
    -- "         !.........||||                     ||||",
    -- "         !.........||||  ##                 ||||",
    -- "         !.........||||                     ||||",
    -- "         !.........||||                     ||||",
    -- "         !.........||||                     ||||",
    -- "         !.........||||                     ||||",
    -- "         `.........||||                    ,||||",
    -- "          .;.......||||               _.-!!|||||",
    -- "   .,uodWBBBBb.....||||       _.-!!|||||||||!:'",
    -- "!YBBBBBBBBBBBBBBb..!|||:..-!!|||||||!iof68BBBBBb....",
    -- "!..YBBBBBBBBBBBBBBb!!||||||||!iof68BBBBBBRPFT?!::   `.",
    -- "!....YBBBBBBBBBBBBBBbaaitf68BBBBBBRPFT?!:::::::::     `.",
    -- "!......YBBBBBBBBBBBBBBBBBBBRPFT?!::::::;:!^\"`;:::       `.",
    -- "!........YBBBBBBBBBBRPFT?!::::::::::^''...::::::;         iBBbo.",
    -- "`..........YBRPFT?!::::::::::::::::::::::::;iof68bo.      WBBBBbo.",
    -- "  `..........:::::::::::::::::::::::;iof688888888888b.     `YBBBP^'",
    -- "    `........::::::::::::::::;iof688888888888888888888b.     `",
    -- "      `......:::::::::;iof688888888888888888888888888888b.",
    -- "        `....:::;iof688888888888888888888888888888888899fT!",
    -- "          `..::!8888888888888888888888888888888899fT|!^\"'",
    -- "            `' !!988888888888888888888888899fT|!^\"'",
    -- "                `!!8888888888888888899fT|!^\"'",
    -- "                  `!988888888899fT|!^\"'",
    -- "                    `!9899fT|!^\"'",
    -- "                      `!^\"'",
  },
  -- Default theme configuration
  default_theme = {
    -- Modify the color palette for the default theme
    colors = {
      fg = "#abb2bf",
      bg = "#1e222a",
    },
    highlights = function(hl) -- or a function that returns a new table of colors to set
      local C = require "default_theme.colors"

      hl.Normal = { fg = C.fg, bg = C.bg }

      -- New approach instead of diagnostic_style
      hl.DiagnosticError.italic = true
      hl.DiagnosticHint.italic = true
      hl.DiagnosticInfo.italic = true
      hl.DiagnosticWarn.italic = true

      return hl
    end,
    -- enable or disable highlighting for extra plugins
    plugins = {
      aerial = true,
      beacon = false,
      bufferline = true,
      cmp = true,
      dashboard = true,
      highlighturl = true,
      hop = false,
      indent_blankline = true,
      lightspeed = false,
      ["neo-tree"] = true,
      notify = true,
      ["nvim-tree"] = false,
      ["nvim-web-devicons"] = true,
      rainbow = true,
      symbols_outline = false,
      telescope = true,
      treesitter = true,
      vimwiki = false,
      ["which-key"] = true,
    },
  },
  -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
  diagnostics = {
    virtual_text = true,
    underline = true,
  },
  -- Extend LSP configuration
  lsp = {
    -- enable servers that you already have installed without mason
    servers = {
      -- "pyright"
    },
    formatting = {
      -- control auto formatting on save
      format_on_save = {
        enabled = true, -- enable or disable format on save globally
        allow_filetypes = { -- enable format on save for specified filetypes only
          -- "go",
        },
        ignore_filetypes = { -- disable format on save for specified filetypes
          -- "python",
        },
      },
      disabled = { -- disable formatting capabilities for the listed language servers
        -- "sumneko_lua",
      },
      timeout_ms = 1000, -- default format timeout
      -- filter = function(client) -- fully override the default formatting function
      --   return true
      -- end
    },
    -- easily add or disable built in mappings added during LSP attaching
    mappings = {
      n = {
        -- ["<leader>lf"] = false -- disable formatting keymap
      },
    },
    -- add to the global LSP on_attach function
    -- on_attach = function(client, bufnr)
    -- end,

    -- override the mason server-registration function
    -- server_registration = function(server, opts)
    --   require("lspconfig")[server].setup(opts)
    -- end,

    -- Add overrides for LSP server settings, the keys are the name of the server
    ["server-settings"] = {
      -- example for addings schemas to yamlls
      -- yamlls = { -- override table for require("lspconfig").yamlls.setup({...})
      --   settings = {
      --     yaml = {
      --       schemas = {
      --         ["http://json.schemastore.org/github-workflow"] = ".github/workflows/*.{yml,yaml}",
      --         ["http://json.schemastore.org/github-action"] = ".github/action.{yml,yaml}",
      --         ["http://json.schemastore.org/ansible-stable-2.9"] = "roles/tasks/*.{yml,yaml}",
      --       },
      --     },
      --   },
      -- },
    },
  },
  -- Mapping data with "desc" stored directly by vim.keymap.set().
  --
  -- Please use this mappings table to set keyboard mapping since this is the
  -- lower level configuration and more robust one. (which-key will
  -- automatically pick-up stored data by this setting.)
  mappings = {
    -- first key is the mode
    n = {
      -- second key is the lefthand side of the map
      -- mappings seen under group name "Buffer"
      ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
      ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
      ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
      ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
      -- quick save
      -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

      ["ga"] = { "<cmd>e#<cr>", desc = "Go to alternate file" },
      -- ["<leader>="] = {"<cmd> %:p:h | pwd<cr>", desc = "Change CWD to current file directory"}
      ["<leader>rr"] = { "<cmd>RunCode<cr>", desc = "Run code" },
      ["<leader>rf"] = { "<cmd>RunFile<cr>", desc = "Run file" },
      ["<leader>rc"] = { "<cmd>RunClose<cr>", desc = "Run close" },
      ["<leader>e"] = { "<cmd>Telescope file_browser<cr>", desc = "Toggle file picker" },
      ["<leader>q"] = false,
      -- ["<leader>qp"] = {"<"}
    },
    t = {
      -- setting a mapping to false will disable it
      -- ["<esc>"] = false,
    },
  },
  -- Configure plugins
  plugins = {
    init = {

      -- { "Mofiqul/dracula.nvim" },
      { "aktersnurra/no-clown-fiesta.nvim" },

      -- {
      --   "rose-pine/neovim",
      --   name = "rose-pine"
      -- },

      {
        "kylechui/nvim-surround",
        tag = "*",
        config = function()
          require("nvim-surround").setup {}
        end
      },

      ["nvim-telescope/telescope-fzf-native.nvim"] = { disable = true },

      ["rcarriga/nvim-notify"] = { disable = true },

      -- ["nvim-neo-tree/neo-tree.nvim"] = { disable = true },
      -- {
      --   "nvim-neorg/neorg",
      --   after = "nvim-treesitter",
      --   config = function()
      --     require('neorg').setup {
      --       load = {
      --         ["core.defaults"] = {}, -- Loads default behaviour
      --         ["core.norg.concealer"] = {}, -- Adds pretty icons to your documents
      --         ["core.norg.completion"] = {}, -- Completion engine
      --         ["core.norg.dirman"] = { -- Manages Neorg workspaces
      --           config = {
      --             workspaces = {
      --               study = "~/notes/study"
      --             },
      --           },
      --         },
      --       },
      --     }
      --   end,
      --   run = ":Neorg sync-parsers",
      --   requires = "nvim-lua/plenary.nvim",
      -- },

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

      -- { 'quarto-dev/quarto-nvim',
      --   requires = {
      --     'hrsh7th/nvim-cmp',
      --     'neovim/nvim-lspconfig',
      --     'nvim-treesitter/nvim-treesitter',
      --     { 'jmbuhr/otter.nvim' },
      --   },
      --   config = function()
      --     vim.opt.conceallevel = 1
      --
      --     -- disable conceal in markdown/quarto
      --     vim.g['pandoc#syntax#conceal#use'] = false
      --
      --     -- embeds are already handled by treesitter injectons
      --     vim.g['pandoc#syntax#codeblocks#embeds#use'] = false
      --
      --     vim.g['pandoc#syntax#conceal#blacklist'] = { 'codeblock_delim', 'codeblock_start' }
      --
      --     -- but allow some types of conceal in math reagions:
      --     -- a=accents/ligatures d=delimiters m=math symbols
      --     -- g=Greek  s=superscripts/subscripts
      --     vim.g['tex_conceal'] = 'gm'
      --
      --     require 'quarto'.setup {
      --       lspFeatures = {
      --         enabled = true,
      --         languages = { 'r', 'python', 'julia' },
      --         diagnostics = {
      --           enabled = true,
      --           triggers = { "BufWrite" }
      --         },
      --         completion = {
      --           enabled = true
      --         }
      --       }
      --     }
      --   end
      -- },
      --
      {
        'ekickx/clipboard-image.nvim',
      },

      { 'CRAG666/code_runner.nvim',
        config = function()
          require('code_runner').setup({
            -- put here the commands by filetype
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

    },

    ["null-ls"] = function(config)
      -- config variable is the default configuration table for the setup function call
      -- local null_ls = require "null-ls"

      -- Check supported formatters and linters
      -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
      -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
      config.sources = {
        -- Set a formatter
        -- null_ls.builtins.formatting.stylua,
        -- null_ls.builtins.formatting.prettier,
      }
      return config -- return final config table
    end,

    ['telescope'] = {
      defaults = {
        preview = {
          mime_hook = function(f, bufnr, opts)
            local is_image = function(filepath)
              local image_extensions = { 'png', 'jpg', 'jpeg', 'gif', 'webp', 'ico' } -- Supported image formats
              local split_path = vim.split(filepath:lower(), '.', { plain = true })
              local extension = split_path[#split_path]
              return vim.tbl_contains(image_extensions, extension)
            end
            if is_image(f) then
              local term = vim.api.nvim_open_term(bufnr, {})
              local function send_output(_, data, _)
                for _, d in ipairs(data) do
                  vim.api.nvim_chan_send(term, d .. '\r\n')
                end
              end
              vim.fn.jobstart(
                {
                  'viu', f -- Terminal image viewer command
                },
                { on_stdout = send_output, stdout_buffered = true, pty = true })
            else
              require("telescope.previewers.utils").set_preview_message(bufnr, opts.winid, "Binary cannot be previewed")
            end
          end
        }
      },
      extensions = {
        file_browser = {
          theme = "ivy",
          hijack_netrw = true,
        }
      }
    },

    heirline = function(config)
      config[2] = nil
      return config
    end,
    treesitter = {
      ensure_installed = { 'python', 'markdown', 'markdown_inline', 'julia', 'yaml', 'lua', 'vim', 'query', 'help', 'latex' },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = { 'markdown' },
      }

    },
    ['nvim-autopairs'] = function()
    end
  },
  -- LuaSnip Options
  -- CMP Source Priorities
  -- modify here the priorities of default cmp sources
  -- higher value == higher priority
  -- The value can also be set to a boolean for disabling default sources:
  -- false == disabled
  -- true == 1000

  cmp = {
    source_priority = {
      nvim_lsp = 1000,
      luasnip = 750,
      buffer = 500,
      path = 250,
    },
  },
  polish = function()
    require 'telescope'.load_extension 'file_browser'


    -- local function download_asset(table)
    --   local http = require
    --
    --   local imageresp = http:request({
    --     method = "get",
    --     url = table.fargs[0],
    --   });
    --
    --   local imagefile = io.open("some_file.jpg", "w")
    --   imagefile:write(resp.content)
    --   imagefile:close()
    -- end
    --


    -- local function create_excercise_file(table)
    --   os.execute("[ ! -d 'ejercicios' ] && mkdir ejercicios")
    --   local path = string.format("ejercicios/%s", table.fargs[0])
    --   os.execute(string.format("touch %s", path))
    --   vim.cmd(string.format("e ", path))
    -- end
    --
    -- vim.api.nvim_create_user_command("Ex", create_excercise_file, { desc = "Create an exercise file", nargs = 1 })

    local function window_move(key)
      local curwin = vim.fn.winnr()
      vim.cmd(string.format('wincmd %s', key))
      if curwin == vim.fn.winnr() then
        if key == 'j' or key == 'k' then
          vim.cmd 'wincmd s'
        else
          vim.cmd 'wincmd v'
        end
        vim.cmd(string.format('wincmd %s', key))
      end
    end

    local function wrap(func, ...)
      local args = { ... }
      return function()
        func(unpack(args))
      end
    end

    vim.keymap.set('n', '<C-h>', wrap(window_move, 'h'), { silent = true })
    vim.keymap.set('n', '<C-j>', wrap(window_move, 'j'), { silent = true })
    vim.keymap.set('n', '<C-k>', wrap(window_move, 'k'), { silent = true })
    vim.keymap.set('n', '<C-l>', wrap(window_move, 'l'), { silent = true })
  end,
}

return config
