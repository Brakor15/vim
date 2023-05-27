set runtimepath^=~/vimfiles runtimepath+=~/.vim/after
let &packpath = &runtimepath

" modules
"exec 'source' glob(stdpath('config') . '/modules/vim-tree.vim')

" vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

let g:python3_host_prog = '/usr/bin/python3'
"let g:loaded_python3_provider = 0

set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
"set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.

"turn relative line numbers on
set relativenumber
set rnu

nnoremap <C-n> <cmd>CHADopen<cr>

call plug#begin('~/.vim/plugged')
 Plug 'dracula/vim'
 "Plug 'ryanoasis/vim-devicons'
 Plug 'SirVer/ultisnips'
 Plug 'honza/vim-snippets'
 Plug 'scrooloose/nerdtree'
 Plug 'preservim/nerdcommenter'
 Plug 'mhinz/vim-startify'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'neovim/nvim-lspconfig'
 Plug 'dense-analysis/ale'
 Plug 'EdenEast/nightfox.nvim'
 Plug 'kyazdani42/nvim-web-devicons' " for file icons
 "Plug 'kyazdani42/nvim-tree.lua'
 Plug 'nvim-lualine/lualine.nvim'
 Plug 'sheerun/vim-polyglot'
 Plug 'jiangmiao/auto-pairs'
 Plug 'ms-jpq/chadtree', { 'branch' : 'chad', 'do' : 'python3 -m chadtree deps' }
call plug#end()

"colorscheme
colorscheme duskfox

lua << END
require('luamodules')
END
