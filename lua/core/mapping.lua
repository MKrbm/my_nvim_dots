local bind = require("keymap.bind")
local map_cr = bind.map_cr
local map_cu = bind.map_cu
local map_cmd = bind.map_cmd
-- Set up your mappings
local map = vim.api.nvim_set_keymap

-- Options
local options = { noremap = true, silent = true }

map("n", "dd", '"ddd', options)
map("n", "D", '"dD', options)
map("n", "x", '"dx', options)
map("n", "<S-x>", '"d<S-x>', options)
map("v", "d", '"dd', options)

local core_map = {
	-- Suckless
	["n|<S-Tab>"] = map_cr("normal za"):with_noremap():with_silent():with_desc("edit: Toggle code fold"),
	["n|<C-s>"] = map_cu("write"):with_noremap():with_silent():with_desc("edit: Save file"),
	["n|Y"] = map_cmd("y$"):with_desc("edit: Yank text to EOL"),
	["n|D"] = map_cmd("d$"):with_desc("edit: Delete text to EOL"),
	["n|n"] = map_cmd("nzzzv"):with_noremap():with_desc("edit: Next search result"),
	["n|N"] = map_cmd("Nzzzv"):with_noremap():with_desc("edit: Prev search result"),
	["n|J"] = map_cmd("mzJ`z"):with_noremap():with_desc("edit: Join next line"),
	["n|<Esc>"] = map_cr("noh"):with_noremap():with_silent():with_desc("edit: Clear search highlight"),
	["n|<C-h>"] = map_cmd("<C-w>h"):with_noremap():with_desc("window: Focus left"),
	["n|<C-l>"] = map_cmd("<C-w>l"):with_noremap():with_desc("window: Focus right"),
	["n|<C-j>"] = map_cmd("<C-w>j"):with_noremap():with_desc("window: Focus down"),
	["n|<C-k>"] = map_cmd("<C-w>k"):with_noremap():with_desc("window: Focus up"),
	["t|<C-h>"] = map_cmd("<Cmd>wincmd h<CR>"):with_silent():with_noremap():with_desc("window: Focus left"),
	["t|<C-l>"] = map_cmd("<Cmd>wincmd l<CR>"):with_silent():with_noremap():with_desc("window: Focus right"),
	["t|<C-j>"] = map_cmd("<Cmd>wincmd j<CR>"):with_silent():with_noremap():with_desc("window: Focus down"),
	["t|<C-k>"] = map_cmd("<Cmd>wincmd k<CR>"):with_silent():with_noremap():with_desc("window: Focus up"),
	["n|<C-Left>"] = map_cr("vertical resize -5"):with_silent():with_desc("window: Resize -5 vertically"),
	["n|<C-Right>"] = map_cr("vertical resize +5"):with_silent():with_desc("window: Resize +5 vertically"),
	["n|<C-Up>"] = map_cr("resize -2"):with_silent():with_desc("window: Resize -2 horizontally"),
	["n|<C-Down>"] = map_cr("resize +2"):with_silent():with_desc("window: Resize +2 horizontally"),
	["n|<C-q>"] = map_cr("wq"):with_desc("edit: Save file and quit"),
	["n|<A-S-q>"] = map_cr("q!"):with_desc("edit: Force quit"),
	["n|<leader>o"] = map_cr("setlocal spell! spelllang=en_us"):with_desc("edit: Toggle spell check"),
	["n|tn"] = map_cr("tabnew"):with_noremap():with_silent():with_desc("tab: Create a new tab"),
	["n|<A-l>"] = map_cr("tabnext"):with_noremap():with_silent():with_desc("tab: Move to next tab"),
	["n|<A-h>"] = map_cr("tabprevious"):with_noremap():with_silent():with_desc("tab: Move to previous tab"),
	["n|to"] = map_cr("tabonly"):with_noremap():with_silent():with_desc("tab: Only keep current tab"),
	["n|^"] = map_cmd("#"):with_noremap():with_silent():with_desc("previous #"),
	["n|#"] = map_cmd("^"):with_noremap():with_silent():with_desc("beginning of line"),
	["n|<leader>h"] = map_cr("sp"):with_noremap():with_silent():with_desc("split horizontally"),
	["n|<leader>v"] = map_cr("vs"):with_noremap():with_silent():with_desc("split vertically"),
	["n|<leader>zz"] = map_cr("ZenMode"):with_noremap():with_silent():with_desc("split vertically"),
	-- ["n|<leader>zc"] = map_cr("close"):with_noremap():with_silent():with_desc("split vertically"),
	-- ["n|dd"] = map_cr('"cdd'):with_noremap():with_silent():with_desc("beginning of line"),
	-- ["n|D"] = map_cr('"cD'):with_noremap():with_silent():with_desc("beginning of line"),
	-- ["n|x"] = map_cr('"cx'):with_noremap():with_silent():with_desc("beginning of line"),
	-- ["n|<S-x>"] = map_cr('"c<S-x>'):with_noremap():with_silent():with_desc("beginning of line"),

	-- Insert mode
	["i|<C-u>"] = map_cmd("<C-G>u<C-U>"):with_noremap():with_desc("edit: Delete previous block"),
	["i|<C-b>"] = map_cmd("<Left>"):with_noremap():with_desc("edit: Move cursor to left"),
	["i|<C-a>"] = map_cmd("<ESC>^i"):with_noremap():with_desc("edit: Move cursor to line start"),
	["i|<C-s>"] = map_cmd("<Esc>:w<CR>"):with_desc("edit: Save file"),
	["i|<C-q>"] = map_cmd("<Esc>:wq<CR>"):with_desc("edit: Save file and quit"),
	["i|<C-w>"] = map_cmd("<C-G>u<C-U>"):with_noremap():with_silent():with_desc("edit: Save file and quit"),
	["i|<M-]>"] = map_cmd("<C-t>"):with_noremap():with_silent():with_desc("insert indent"),
	["i|<M-[>"] = map_cmd("<C-d>"):with_noremap():with_silent():with_desc("delete indent"),

	-- Command mode
	["c|<C-b>"] = map_cmd("<Left>"):with_noremap():with_desc("edit: Left"),
	["c|<C-f>"] = map_cmd("<Right>"):with_noremap():with_desc("edit: Right"),
	["c|<C-a>"] = map_cmd("<Home>"):with_noremap():with_desc("edit: Home"),
	["c|<C-e>"] = map_cmd("<End>"):with_noremap():with_desc("edit: End"),
	["c|<C-d>"] = map_cmd("<Del>"):with_noremap():with_desc("edit: Delete"),
	["c|<C-h>"] = map_cmd("<BS>"):with_noremap():with_desc("edit: Backspace"),
	["c|<C-t>"] = map_cmd([[<C-R>=expand("%:p:h") . "/" <CR>]])
		:with_noremap()
		:with_desc("edit: Complete path of current file"),
	["c|<C-v>"] = map_cmd("<C-r>+"):with_noremap():with_desc("pase"),
	-- Visual mode
	["v|J"] = map_cmd(":m '>+1<CR>gv=gv"):with_desc("edit: Move this line down"),
	["v|K"] = map_cmd(":m '<-2<CR>gv=gv"):with_desc("edit: Move this line up"),
	["v|<"] = map_cmd("<gv"):with_desc("edit: Decrease indent"),
	["v|>"] = map_cmd(">gv"):with_desc("edit: Increase indent"),
	["v|^"] = map_cmd("#"):with_noremap():with_silent():with_desc("previous #"),
	["v|#"] = map_cmd("^"):with_noremap():with_silent():with_desc("beginning of line"),
	["nv|<leader>]"] = map_cmd("G"):with_noremap():with_desc("end of file"),
	["nv|<leader>["] = map_cmd("gg"):with_noremap():with_desc("beginning of file"),
	--terminal
	["t|<C-v>"] = map_cmd("<S-C-v>"):with_noremap():with_desc("pase"),
	-- remove default keymaps for copilot action
}

bind.nvim_load_mapping(core_map)
