--              AstroNvim Configuration Table

local config = {
  -- Set colorscheme to use
  colorscheme = "no-clown-fiesta",
  -- Set vim options here (vim.<first_key>.<second_key> = value)
  options = {
    opt = {
      guicursor = "",
      relativenumber = true,
      number = true,
      spell = false,
      signcolumn = "auto",
      wrap = false,
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
  -- ['telescope'] = {
  --   defaults = {
  --     preview = {
  --       mime_hook = function(f, bufnr, opts)
  --         local is_image = function(filepath)
  --           local image_extensions = { 'png', 'jpg', 'jpeg', 'gif', 'webp', 'ico' } -- Supported image formats
  --           local split_path = vim.split(filepath:lower(), '.', { plain = true })
  --           local extension = split_path[#split_path]
  --           return vim.tbl_contains(image_extensions, extension)
  --         end
  --         if is_image(f) then
  --           local term = vim.api.nvim_open_term(bufnr, {})
  --           local function send_output(_, data, _)
  --             for _, d in ipairs(data) do
  --               vim.api.nvim_chan_send(term, d .. '\r\n')
  --             end
  --           end
  --           vim.fn.jobstart(
  --             {
  --               'viu', f -- Terminal image viewer command
  --             },
  --             { on_stdout = send_output, stdout_buffered = true, pty = true })
  --         else
  --           require("telescope.previewers.utils").set_preview_message(bufnr, opts.winid, "Binary cannot be previewed")
  --         end
  --       end
  --     }
  --   },
  --   extensions = {
  --     file_browser = {
  --       theme = "ivy",
  --       hijack_netrw = true,
  --     }
  --   }
  -- },
  -- heirline = function(config)
  --   config[2] = nil
  --   return config
  -- end,
  -- treesitter = {
  --   ensure_installed = { 'python', 'markdown', 'markdown_inline', 'julia', 'yaml', 'lua', 'vim', 'query', 'help', 'latex' },
  --   highlight = {
  --     enable = true,
  --     additional_vim_regex_highlighting = { 'markdown' },
  --   }
  --
  -- },

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
  end,
}

return config
