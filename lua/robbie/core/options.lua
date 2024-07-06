vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.encoding = "utf-8" -- set encoding
opt.nu = true -- enable line numbers
opt.relativenumber = true -- relative line numbers

-- tabs & indentation
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true -- convert tabs to spaces
opt.autoindent = true -- auto indentation

opt.list = false -- show tab characters and trailing whitespace
opt.wrap = false -- line wrapping

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- unless capital letter in search
opt.hlsearch = false -- do not highlight all matches on previous search pattern
opt.incsearch = true -- incrementally highlight searches as you type

opt.cursorline = true --highlight cursor

-- appearance
opt.termguicolors = true -- enable true color support
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start postion

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register 

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the right

opt.scrolloff = 8 -- minimum number of lines to keep above and below the cursor
opt.sidescrolloff = 8 --minimum number of columns to keep above and below the cursor

vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
  pattern = "*.py",
  callback = function()
    opt.textwidth = 79
    opt.colorcolumn = "79"
  end
}) -- python formatting

vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
  pattern = {"*.js", "*.html", "*.css", "*.lua"},
  callback = function()
    opt.tabstop = 2
    opt.softtabstop = 2
    opt.shiftwidth = 2
  end
}) -- javascript formatting

vim.api.nvim_create_autocmd("BufReadPost", {
    pattern = "*",
    callback = function()
      if vim.fn.line("'\"") > 0 and vim.fn.line("'\"") <= vim.fn.line("$") then
        vim.cmd("normal! g`\"")
      end
    end
}) -- return to last edit position when opening files
