execute pathogen#infect()
"call pathogen#runtime_append_all_bundles()
"filetype off

filetype plugin on
filetype plugin indent on

" VIM Configuration File
" Description: Optimized for C/C++ development, but useful also for other things.
" Author: Gerhard Gappmeier
"

" vimrc leaders
let mapleader = ","
nmap <leader>e :e ~/.vim/.vimrc<CR>
nmap <leader>s :source ~/.vim/.vimrc<CR>
cnoremap sudow w !sudo tee % >/dev/null<CR>

"nmap H :100j<CR>

" Open Tagbar
nnoremap <silent> <Leader>t :TagbarToggle<CR>

" NERDTree configuration
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

function! s:CloseIfOnlyNerdTreeLeft()
    if exists("t:NERDTreeBufName")
        if bufwinnr(t:NERDTreeBufName) != -1
            if winnr("$") == 1
                 q
            endif
        endif
    endif
endfunction

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
let NERDTreeShowBookmarks=1

autocmd FileType make setlocal noexpandtab

set hlsearch
:nnoremap <CR> :nohlsearch<CR><CR>

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
" disable vi compatibility (emulation of old bugs)
set nocompatible
" use indentation of previous line
set autoindent
" use intelligent indentation for C
set smartindent
" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces
" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=120
" turn syntax highlighting on
set t_Co=256
syntax on
colorscheme busybee
" turn line numbers on
set number
set noswapfile


au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
