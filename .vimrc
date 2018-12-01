set nocompatible                            " Be iMproved, required

so ~/.vim/plugins.vim

syntax enable

set backspace=indent,eol,start              "Make backspace behave like every other editor.
set number                                  "Let's activate line numbers.
let mapleader=","                           "The default leader is \, but a comma is much better.

"----------Visuals----------"

colorscheme atom-dark
set t_CO=256                                "Use 256 colors. This is useful for termial vim.
set guifont=IBM_Plex_Mono:h16
set linespace=15                            "Macvim-specific line-height.

set guioptions-=e
set guioptions-=L
set guioptions-=l
set guioptions-=R
set guioptions-=r

"----------Searching--------"

set hlsearch
set incsearch

"----------Split manager----"

set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"----------Mappings---------"

" Make it easy to edit the vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>

" Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

" Make NERDTree easier to toggle.
nmap <D-1> :NERDTreeToggle<cr>

nmap <D-p> :CtrlP<cr>
nmap <D-r> :CtrlPBufTag<cr>
nmap <D-e> :CtrlPMRUFiles<cr>

"-------------Plugins--------------"
"/
"/ CtrlP
"/
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

"----------AutoCmds---------"

" Automatically source the vimrc file on save.

augroup autosouring
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END
