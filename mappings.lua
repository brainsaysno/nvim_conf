return {
  n = {
    ["ga"] = { "<cmd>e#<cr>", desc = "Go to alternate file" },
    ["<leader>rr"] = { "<cmd>RunCode<cr>", desc = "Run code" },
    ["<leader>rf"] = { "<cmd>RunFile<cr>", desc = "Run file" },
    ["<leader>rc"] = { "<cmd>RunClose<cr>", desc = "Run close" },
    ["<C-p>"] = { "<cmd>Telescope find_files<cr>", desc = "Toggle find files" },
    ["<C-t>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle floating terminal" },
    ["<leader>q"] = false,
    -- ["<C-f>"] = { "<cmd>Telescope find_files<cr>", desc = "Find files" },

    -- Navigate tabs with H and L
    H = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer"
    },
    L = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer"
    },
  },
  t = {
    ["<C-t>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle floating terminal" },
  }
}
