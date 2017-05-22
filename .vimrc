"Remember to use vim -u ~/Documents/Numerics/LearnVim/.vimrc to use this vimrc. If you want none .vimrc use vim -u NONE
"Remembering to Vim to map correctelly. Stadart when you are using a .vimrc in the $VIMRC directory.
set nocompatible

echo ">^.^<"

"Put the number over the lines
set number numberwidth=2

"Backspace configure
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

"Color Scheme
syntax enable "Enable highlighting
colorscheme desert
set background=dark

set history=500
set laststatus=2
inoremap <C-u> <esc>viwUi

let mapleader=","
nnoremap <leader>ev :vsplit ~/Documents/Numerics/LearnVim/.vimrc<cr>
nnoremap <leader>sv :source ~/Documents/Numerics/LearnVim/.vimrc<cr>

"Some mapping
"Search using space
nnoremap <space> :/
"Exits the insert mode by pressing jk 
inoremap jk <esc> 
"Saving by pressing ww and quit by pressing qq
nnoremap ww :w<cr>
nnoremap qq :wq<cr>
"Forcing me to use the mapping
inoremap <esc> <nop>
noremap <up> <nop>
noremap <down> <nop>
noremap <right> <nop>
noremap <left> <nop>

"Some filetype mapping
augroup filetype_c
	autocmd!
	autocmd FileType c nnoremap <buffer> <localleader>c I//<esc>
augroup END

augroup filetype_html
	autocmd!
	autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
augroup END

set statusline=%f%m%r%h%y%=%l/%L

augroup filetype_vim
	autocmd!
	autocmd Filetype vim setlocal foldmethod=marker
augroup END
