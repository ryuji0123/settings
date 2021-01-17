if &compatible
   set nocompatible
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('/home/rokuda/.vim/dein')
  call dein#begin(expand('~/.vim/dein'))
  "Pligins
  call dein#add('Shougo/dein.vim')
  "lexima
  call dein#add('cohama/lexima.vim')
  "molokai
  call dein#add('tomasr/molokai')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

"install plugins
if dein#check_install()
   call dein#install()
endif

"molokai
let g:molokai_original=1
colorscheme molokai
set t_Co=256


"{{{ Edit setting
set number
set autoindent
set smartindent
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set backspace=indent,eol,start
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"}}}
"
"{{{ Search setting
set incsearch
set ignorecase
set nohlsearch
set smartcase
"}}}
