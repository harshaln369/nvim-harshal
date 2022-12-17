-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness
---------------------
-- General Keymaps
---------------------

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- file explorer
keymap.set("n", "<leader>e", ":Ex<CR>")

-- Move text up and down
keymap.set("n", "<A-j>", ":m .+1<CR>==")
keymap.set("n", "<A-k>", ":m .-2<CR>==")
keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")
keymap.set("v", "p", '"_dP')

-- harpoon

keymap.set("n", "<leader>aa", ':lua require("harpoon.mark").add_file()<CR>', { silent = true }) --  add harpoon mark
keymap.set("n", "<leader>ae", ':lua require("harpoon.ui").toggle_quick_menu()<CR>', { silent = true }) -- toggle quick menu

keymap.set("n", "<leader>aj", ':lua require("harpoon.ui").nav_file(1)<CR>') -- navigates to file 1
keymap.set("n", "<leader>ak", ':lua require("harpoon.ui").nav_file(2)<CR>') -- navigates to file 2
keymap.set("n", "<leader>al", ':lua require("harpoon.ui").nav_file(3)<CR>') -- navigates to file 3
keymap.set("n", "<leader>a;", ':lua require("harpoon.ui").nav_file(4)<CR>') -- navigates to file 4

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
