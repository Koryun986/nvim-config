---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>ld"] = { "<cmd> lua vim.diagnostic.setqflist() <CR>", "Lsp File Diagnostic" },
    ["<leader>."] = {"<cmd>:TypescriptAddMissingImports <CR>", "Typescript add missing imports"},
    ["<leader>tb"] = { "<cmd> :TagbarToggle<CR>" },
    ["<A-j>"] = { ":m .+1<CR>==", "Move line up"},
    ["<A-k>"] = { ":m .-2<CR>==", "Move line down"},
    ["A-."] = { "<cmd> :res +10 . (winheight(0) * 3/2)<CR>" },
    ["A-,"] = { "<cmd> :exe -10 . (winheight(0) * 2/3)<CR>" },
    -- ["s"] = { ":HopAnywhere<cr>", opts = { silent = true } },
    ["S"] = { ":HopWord<cr>", opts = { silent = true } },
    ["<leader>tt"] = { function() require("neotest").run.run() end, "Run nearest test" },
    ["<leader>tf"] = { function() require("neotest").run.run(vim.fn.expand "%") end, "Run file test" },
    ["<leader>to"] = { ":Neotest output<CR>", "Test output" },
    ["<leader>ts"] = { ":Neotest summary<CR>", "Test summary" },
    ["<leader>hl"] = { ":HopLine<cr>", "Hop find line"},
    ["<leader>ha"] = { ":HopAnywhere<cr>", "Hop find line"},
  },
  v = {
    ["<A-j>"] = { ":m '>+1<CR>gv=gv", "Move line up"},
    ["<A-k>"] = { ":m '<-2<CR>gv=gv", "Move line down"},
    ["jk"] = {"<ESC>"},
    ["S"] = { ":HopWord<cr>", opts = { silent = true } },
  },
}

-- more keybinds!

return M
