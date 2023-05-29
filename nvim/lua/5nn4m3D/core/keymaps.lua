vim.g.mapleader = " "

local key = vim.keymap

-- general keymaps
key.set("i", "jk", "<ESC>") -- escaape!
key.set("n", "<leader>nh", ":nohl<CR>") -- Clear Search Highlights
key.set("n", "x", "_x") -- Delete Character and Dont save to Register
-- key.set("n", "j", "k")
-- key.set("n", "k", "j")

-- increment/decrement numbers
key.set("n", "<leader>+", "<C-a>") -- increment
key.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
key.set("n", "<leader>sd", "<C-w>v") -- split window vertically
key.set("n", "<leader>sx", "<C-w>s") -- split window horizontally
key.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
key.set("n", "<leader>sc", ":close<CR>") -- close current split window
key.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- make the tab as large as possible

key.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
key.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
key.set("n", "<leader>t[", ":tabn<CR>") --  go to next tab
key.set("n", "<leader>t]", ":tabp<CR>") --  go to previous tab

-- File Explorer
key.set("n", "<leader>bt", ":NvimTreeToggle<CR>") -- toggle file explorer
key.set("n", "<leader>ft", ":NvimTreeFocus<CR>")

-- Fold Stuff Maybe look into it

-- Telescope
key.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
key.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
key.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
key.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
key.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- Colorscheme toggle
