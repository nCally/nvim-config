vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>")

keymap.set("n", "<leader>nh", ":nohl<CR>")

-- keymap.set("n", "x", '"_x')
--
keymap.set({'n', 'x'}, 'gp', '"+p')
keymap.set({'n', 'x'}, 'gy', '"+y')

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>lua require'telescope.builtin'.find_files()<cr>") -- find files within current directory
keymap.set("n", "<leader>fs", "<cmd>lua require'telescope.builtin'.live_grep()<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>lua require'telescope.builtin'.grep_string()<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>lua require'telescope.builtin'.buffers()<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>lua require'telescope.builtin'.help_tags()<cr>") -- list available help tags

vim.g.NERDTreeQuitOnOpen = 1

keymap.set("n", "<leader><leader>", "<cmd>Centerpad 20<cr>") -- center current buffer
