---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>ld"] = { "<cmd> lua vim.diagnostic.setqflist() <CR>", "Lsp File Diagnostic" },
    ["<A-j>"] = { ":m .+1<CR>==", "Move line up"},
    ["<A-k>"] = { ":m .-2<CR>==", "Move line down"},
  },
  v = {
    ["<A-j>"] = { ":m '>+1<CR>gv=gv", "Move line up"},
    ["<A-k>"] = { ":m '<-2<CR>gv=gv", "Move line down"},
    ["jk"] = {"<ESC>"}, 
  },
}

-- more keybinds!

return M
