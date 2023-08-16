-- return function()
-- 	vim.defer_fn(function()
-- 		require("copilot").setup({
-- 			cmp = {
-- 				enabled = true,
-- 				method = "getCompletionsCycling",
-- 			},
-- 			panel = {
-- 				-- if true, it can interfere with completions in copilot-cmp
-- 				enabled = false,
-- 			},
-- 			suggestion = {
-- 				-- if true, it can interfere with completions in copilot-cmp
-- 				enabled = false,
-- 			},
-- 			filetypes = {
-- 				["dap-repl"] = false,
-- 				["big_file_disabled_ft"] = false,
-- 			},
-- 		})
-- 	end, 100)
-- end

vim.cmd([[imap <silent><script><expr> <C-k> copilot#Accept("\<CR>")]])
vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true
vim.g.copilot_tab_fallback = ""
