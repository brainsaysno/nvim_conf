--              AstroNvim Configuration Table

local config = {
  -- Set colorscheme to use
  colorscheme = "kanagawa-dragon",
  -- Set vim options here (vim.<first_key>.<second_key> = value)
  options = {
    opt = {
      guicursor = "",
      relativenumber = true,
      number = true,
      spell = false,
      signcolumn = "auto",
      wrap = false,
      cmdheight = 1,
    },
    g = {
      mapleader = " ",
      autoformat_enabled = true,
      cmp_enabled = true,
      autopairs_enabled = true,
      diagnostics_enabled = true,
      status_diagnostics_enabled = true,
      icons_enabled = true,
      heirline_bufferline = true,
    },
  },
  diagnostics = {
    virtual_text = true,
    underline = true,
  },

  -- lsp = {
  --   setup_handlers = {
  --     -- add custom handler
  --     tsserver = function(_, opts) require("typescript").setup { server = opts } end
  --   }
  -- },
  -- plugins = {
  --   "jose-elias-alvarez/typescript.nvim", -- add lsp plugin
  --   {
  --     "williamboman/mason-lspconfig.nvim",
  --     opts = {
  --       ensure_installed = { "tsserver" }, -- automatically install lsp
  --     },
  -- },
  --
  polish = function()
    require 'telescope'.load_extension 'file_browser'

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

    local notify = vim.notify
    vim.notify = function(msg, ...)
      if msg:match("warning: multiple different client offset_encodings") then
        return
      end

      notify(msg, ...)
    end
  end,
}

return config
