vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps
keymap.set("i", "jk", "<ESC>")
keymap.set("n", "<leader>nh", ":nohl<CR>")


-- Split Windoes
keymap.set("n", "<leader>sv", "<C-w>v") -- Split window vertical
keymap.set("n", "<leader>sh", "<C-w>s") -- Split window horizontal
keymap.set("n", "<leader>se", "<C-w>=") -- Split window with equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- Close current split window
keymap.set("n", "<leader>se", "<C-w>=") -- Split window with equal width

-- Setup Tab
keymap.set("n", "<leader>to", ":tabnew<CR>") -- Open new tab
keymap.set("n", "<leader>tc", ":tabclose<CR>") -- Close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- Move to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- Split window with equal width

-- Toggle NVM-Tree
keymap.set("n", "ntt", ":NvimTreeToggle<CR>") -- Toggle nvim tree

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

