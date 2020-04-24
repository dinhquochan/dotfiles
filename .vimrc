set nocompatible                            " Be iMproved, required

so ~/.vim/plugins.vim

syntax enable

set backspace=indent,eol,start              "Make backspace behave like every other editor.
set number                                  "Let's activate line numbers.
let mapleader=","                           "The default leader is \, but a comma is much better.
set laststatus=2

"----------Visuals----------"

colorscheme nord 
set t_CO=256                                "Use 256 colors. This is useful for termial vim.
set guifont=Iosevka_Medium:h16
set linespace=5                             "Macvim-specific line-height.

set guioptions-=e
set guioptions-=L
set guioptions-=l
set guioptions-=R
set guioptions-=r

set tabstop=4 shiftwidth=4 expandtab

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

"Quickly browse to any tag/symbol in the project.
"Tip: run ctags -R to regenerated the index.
nmap <Leader>f :tag<space>

"-------------Plugins--------------"
"/
"/ CtrlP
"/
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|idea\|vscode\|git'


"/
"/ NERDTree
"/
let NERDTreeHijeckNetrw = 0

"/
"/ PHP Namespace
"/
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>n <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>n :call PhpInsertUse()<CR>

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>e <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>e :call PhpExpandClass()<CR>

"/
"/ PHP CS Fixer
"/
let g:php_cs_fixer_rules = "@PSR2"
let g:php_cs_fixer_config_file = '/Users/handinh/.php_cs'
let g:php_cs_fixer_php_path = "php"
let g:php_cs_fixer_enable_default_mapping = 1
let g:php_cs_fixer_dry_run = 0
let g:php_cs_fixer_verbose = 0

autocmd BufWritePost *.php silent! call PhpCsFixerFixFile()

"----------AutoCmds---------"

" Automatically source the vimrc file on save.

augroup autosouring
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END


"-------------Tips and Reminders--------------"
" - Press 'zz' to instantly center the line where the cursor is located.
