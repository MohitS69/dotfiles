local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- These are for the nvim tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

keymap("", "<Space>", "<Nop>", opts)
-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
-- keymap("n", "<C-h>", "<C-w>h", opts)
-- keymap("n", "<C-j>", "<C-w>j", opts)
-- keymap("n", "<C-k>", "<C-w>k", opts) -- these are not needed if vim-tmux-navigator is already installed
-- keymap("n", "<C-l>", "<C-w>l", opts)
--
-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize +2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize -2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv=gv", opts)
keymap("x", "K", ":move '<-2<CR>gv=gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Bufferline
keymap("n", "<leader>bl", ":BufferLineCloseRight<CR>", opts)
keymap("n", "<leader>bh", ":BufferLineCloseLeft<CR>", opts)
keymap("n", "<leader>c", ":Bdelete!<CR>", {noremap = true, silent = true, nowait = 0})
keymap("n", "<leader>bj", ":BufferLinePick<CR>", opts)
keymap("n", "<leader>be", ":BufferLinePickClose<CR>", opts)
-- Search clearing
keymap("n", "<leader>h", ":noh<CR>", opts)

-- Map Alt+Backspace to Ctrl+W in insert mode
-- vim.api.nvim_set_keymap('i', '<C-BS>', '<C-W>', { noremap = true }) -- update, i just rempped it to my kitty terminal itself

-- Mapping of oil file tree
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<leader>e", "<CMD>NvimTreeToggle<CR>", { desc = "Opens the nvim tree" })

-- It will make sure that the cursor in the middle of the file wile navigating
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- It will keep the cursor in the middle while navigating between searches.
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
-- it will copy the text into systems clipboard.
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
