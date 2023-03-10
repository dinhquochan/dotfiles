local status, n = pcall(require, 'gruvbox')

if(not status) then return end

n.setup({})

vim.cmd('colorscheme gruvbox')
