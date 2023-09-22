---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>ld"] = { "<cmd> lua vim.diagnostic.setqflist() <CR>", "Lsp File Diagnostic" },
    ["<leader>tb"] = { "<cmd> :TagbarToggle<CR>" },
    ["<A-j>"] = { ":m .+1<CR>==", "Move line up"},
    ["<A-k>"] = { ":m .-2<CR>==", "Move line down"},
    ["A-."] = { "<cmd> :res +10 . (winheight(0) * 3/2)<CR>" },
    ["A-,"] = { "<cmd> :exe -10 . (winheight(0) * 2/3)<CR>" },
  },
  v = {
    ["<A-j>"] = { ":m '>+1<CR>gv=gv", "Move line up"},
    ["<A-k>"] = { ":m '<-2<CR>gv=gv", "Move line down"},
    ["jk"] = {"<ESC>"}, 
  },
}

-- more keybinds!

return M
