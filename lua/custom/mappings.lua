---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>ld"] = { "<cmd> lua vim.diagnostic.setqflist() <CR>", "Lsp File Diagnostic" },
  },
}

-- more keybinds!

return M
