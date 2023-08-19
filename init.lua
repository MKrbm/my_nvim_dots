if not vim.g.vscode then
	require("core")
end

vim.opt.shell = "/bin/bash"

vim.g.copilot = true

require("modules.configs.completion.copilot")

-- vim.api.nvim_set_keymap("i", "<C-k>", "", { silent = true })
-- vim.api.nvim_set_keymap("i", "<C-h>", "", { silent = true })
-- vim.api.nvim_set_keymap("i", "<C-l>", "", { silent = true })

-- vim.api.nvim_set_keymap("i", "<C-k>", 'copilot#Accept("<CR>")', { silent = true, expr = true, script = true })
-- vim.api.nvim_set_keymap("i", "<C-l>", "copilot#Next()", { silent = true, expr = true })

-- vim.g.copilot_no_default_keymap = true
-- vim.g.copilot_no_tab_map = true

vim.keymap.set("n", "gc", function()
	require("treesitter-context").go_to_context()
end, { silent = true, desc = "treesitter: Go to previous context", noremap = true })

vim.o.autochdir = "false"
