-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Buffer and File stuff
map("n", "<leader>w" ,":w<CR>")
map("n", "<leader>q" ,":q<CR>")
map("n", "<leader>D", ":bdelete<CR>")
map("n", "<leader>d", ":BD<CR>")
map("n", "<S-h>", ":bnext<CR>")
map("n", "<S-l>", ":bprevious<CR>")

-- movements
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- formatting
map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- navigation
map("n", "<leader>f", ":Files<CR>")
map("n", "<leader>e", ":Ex<CR>")
map("n", "<leader>u", ":UndotreeToggle<CR>")
map("n", "<C-h>", ":wincmd h<CR>")
map("n", "<C-j>", ":wincmd j<CR>")
map("n", "<C-k>", ":wincmd k<CR>")
map("n", "<C-l>", ":wincmd l<CR>")

-- clipboard
map("n", "<leader>p", [[:norm "+p<CR>]])
