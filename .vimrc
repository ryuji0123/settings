"neobundle scripts-----------------------------
if &compatible
  set nocompatible               " be improved
endif

" required:
set runtimepath+=/users/ryo/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/Users/ryo/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'cohama/lexima.vim'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'fatih/vim-go'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

"{{{ Edit setting
set number
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set noexpandtab
set backspace=indent,eol,start
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" For Makefile
let _curfile=expand("%:r")
if _curfile == 'Makefile'
  set noexpandtab
endif
"}}}

"{{{ Search setting
set incsearch
set ignorecase
set smartcase
"}}}

"{{{ Syntax setting
colorscheme molokai
syntax enable
set t_Co=256
set background=dark
let g:syntastic_enable_signs = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
"}}}

"{{{ Completion setting
if neobundle#is_installed('neocomplete.vim')
  let g:neocomplete#enable_at_startup = 1
  let g:neocomplete#enable_smart_case = 1
  let g:neocomplete#min_keyword_length = 3
  let g:neocomplete#auto_completion_start_length = 1
endif
"}}}

"{{{ go-vim setting
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
"}}}
