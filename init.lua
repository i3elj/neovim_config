require('settings')
require('plugins')
require('plugs.cmp')
require('plugs.lsp')
require('plugs.treesitter')
require('plugs.comment')
require('plugs.indentblankline')
require('plugs.shade')
require('luasnip.loaders.from_vscode').lazy_load()
require('gitsigns').setup()
require('nvim-lsp-installer').setup {}
require('mappings')
