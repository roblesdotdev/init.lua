vim.g.mapleader = ' '
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move hl block
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- replace visual
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Copy to clipboard
vim.keymap.set("v", "<C-y>", [["+y]])
vim.keymap.set("n",
	"<C-y>",
	[[
  <Cmd>lua require("utils.common").yankline()<CR> 
]]
)
vim.keymap.set("n", "<Space>yy", "<Cmd>%y+<CR>")

-- Paste from clipboard
vim.keymap.set({"n", "v"}, "<C-p>", [["+p]])

-- Work with buffers
vim.keymap.set("n", "bd", "<Cmd>bd<CR>")
vim.keymap.set("n", "bn", "<Cmd>bn<CR>")
vim.keymap.set("n", "bp", "<Cmd>bp<CR>")
