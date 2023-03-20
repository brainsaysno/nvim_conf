return {
  n = {
    ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
    ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
    ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },

    ["ga"] = { "<cmd>e#<cr>", desc = "Go to alternate file" },
    ["<leader>rr"] = { "<cmd>RunCode<cr>", desc = "Run code" },
    ["<leader>rf"] = { "<cmd>RunFile<cr>", desc = "Run file" },
    ["<leader>rc"] = { "<cmd>RunClose<cr>", desc = "Run close" },
    ["<leader>e"] = { "<cmd>Telescope file_browser<cr>", desc = "Toggle file picker" },
    ["<leader>q"] = false,
    -- ["<C-f>"] = { "<cmd>Telescope find_files<cr>", desc = "Find files" },

    -- Navigate tabs with H and L
    H = { function() require("astronvim.utils.buffer").nav( -(vim.v.count > 0 and vim.v.count or 1)) end, desc = "Previous buffer" },
    L = { function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end, desc = "Next buffer" },
  },
}
