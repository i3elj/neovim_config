-- settings
-- NEED ATTENTION
-- set completeopt=menu,menuone,noselect,noinsert,preview
-- set wildmode=longest,list,full
vim.opt.completeopt = { "menu", "menuone", "noselect", "noinsert", "preview" }
vim.opt.wildmode = { "longest", "full" }
vim.opt.wildmenu = true
vim.opt.encoding = "utf-8"
vim.opt.splitbelow = false
vim.opt.splitright = false
vim.opt.wildmenu = true
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.wrap = false
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.tabstop = 3
vim.opt.softtabstop = 3
vim.opt.shiftwidth = 3
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = "~/.vim/undodir"
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.signcolumn = "yes"
vim.opt.laststatus = 2
vim.opt.cursorline = false
vim.opt.termguicolors = true
vim.g.mapleader = " "
vim.cmd([[
set guifont=Ubuntu\ Mono:h9
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

let g:neovide_transparency=1
]])

local higroup = vim.api.nvim_create_augroup("Highlight", { clear = true } )

function acmd(type, cmd, gp)
   return vim.api.nvim_create_autocmd(type, { command = cmd, group = gp})
end

acmd("BufEnter", "hi IncSearch ctermfg=red ctermbg=white", higroup)
acmd("BufEnter", "hi WinSeparator ctermfg=grey", higroup)
acmd("BufEnter", "hi StatusLine ctermfg=darkgrey ctermbg=black", higroup)
acmd("BufEnter", "hi CursorLine cterm=bold gui=bold", higroup)
acmd("BufEnter", "hi LineNr guibg=none", higroup)
acmd("BufEnter", "hi SignColumn guibg=none", higroup)

-- colorscheme
vim.cmd("colorscheme zenburn")
