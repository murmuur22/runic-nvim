vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local keymap = vim.keymap -- for conciseness

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with <jk>"})

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- buffers
keymap.set("n", "<C-c>", ":bn<cr>", { desc = "Go to next buffer"})
keymap.set("n", "<C-z>", ":bp<cr>", { desc = "Close buffer"})
keymap.set("n", "<C-x>", ":bd<cr>", { desc = "Go to previous buffer"})

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- window navigation
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Navigate to left window" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Navigate to right window" })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Navigate to window below" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Navigate to window above" })

-- save
keymap.set("n", "<C-s>", "<cmd>w<cr>")
keymap.set("i", "<C-s>", "<ESC><cmd>w<cr>li")

-- format code using lsp
keymap.set("n", "<leader>fmd", vim.lsp.buf.format, { desc = "Format using lsp (default)" })

-- autosession workspaces
keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" }) -- restore last workspace session for current directory
keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" }) -- save workspace session for current working directory

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find string under cursor in cwd" })

-- tree
keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" }) -- toggle file explorer on current file
keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer
