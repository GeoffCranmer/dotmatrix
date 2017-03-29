" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Enable syntax highlighting
syntax on

" Use 2 spaces instead of tabs
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Show line numbers
set number

" Always keep 7 lines visible above or below the cursor
set scrolloff=7

" Stop using arrow keys
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" Enable clang-format with <C-k>
map <C-K> :pyf ~/dotmatrix/clang-format.py<cr>
imap <C-K> <c-o>:pyf ~/dotmatrix/clang-format.py<cr>

