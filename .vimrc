"----------Plugin----------"
let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')

if !filereadable(vimplug_exists)
  if !executable("curl")
    echoerr "You have to install curl or first install vim-plug yourself!"
    execute "q!"
  endif
  echo "Installing Vim-Plug..."
  echo ""
  silent exec "!\curl -fLo " . vimplug_exists . " --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  let g:not_finish_vimplug = "yes"

  autocmd VimEnter * PlugInstall
endif

call plug#begin(expand('~/.config/nvim/plugged'))

Plug 'dracula/vim',{'as': 'dracula'}
Plug 'arcticicestudio/nord-vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

"----------Basic----------"

"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

set fileformats=unix,dos,mac

"" Fix backspace indent
set backspace=indent,eol,start

"" Tabs. May be overridden by autocmd rules
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

set number
set relativenumber
let mapleader=","
set laststatus=2

"----------Visuals----------"
syntax on

let no_buffers_menu=1
colorscheme dracula
set t_Co=256
set linespace=5

set guioptions-=e
set guioptions-=L
set guioptions-=l
set guioptions-=R
set guioptions-=r

if exists('+termguicolors')
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

"----------Searching--------"

set hlsearch
set incsearch
set ignorecase
set smartcase

"----------SHELL--------"

if exists('$SHELL')
    set shell=$SHELL
else
    set shell=/bin/zsh
endif

"----------Split manager----"

set splitbelow
set splitright

nmap <Leader>h :<C-u>split<CR>
nmap <Leader>v :<C-u>vsplit<CR>

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

"Quickly browse to any tag/symbol in the project.
"Tip: run ctags -R to regenerated the index.
nmap <Leader>f :tag<space>

"----------AutoCmds---------"

" Automatically source the vimrc file on save.

augroup autosouring
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END

"-------------Tips and Reminders--------------"
" - Press 'zz' to instantly center the line where the cursor is located.
