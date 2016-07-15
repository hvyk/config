" VIM Configuration File
" Description: Optimized for C
" Author: Sean Hayes

" TABLE OF CONTENTS
"
" 1) Initial Setup
" 2) Default Configuration
" 3) Look and Feel
" 4) User Defined Functionality
" 5) Tags
" 6) Plugins
"       6a) NerdTree
"       6b) Tagbar
"       6c) Rainbow Parentheses

" SECTION 1) Initial Setup
" ========================

" Load pathogen which will load your plugins
execute pathogen#infect()
filetype plugin on
filetype plugin indent on


" SECTION 2) Default Configuration
" ================================

" vimrc leaders
let mapleader = ","

" Never expand tabs - only use spaces
autocmd FileType make setlocal noexpandtab

" Always highlight your search term and un-highlight when you press Enter
set hlsearch
:nnoremap <leader>a :nohl<CR>

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
" wrap lines at 120 chars. 80 is somewhat antiquated with nowadays displays.
set textwidth=120
" turn syntax highlighting on
set t_Co=256
syntax on
" turn line numbers on
set number
set noswapfile

" SECTION 3) Look and Feel
" ========================
colorscheme busybee


" SECTION 4) User Defined Functionality
" =====================================

" Quick edit and source of .vimrc
nmap <leader>e :e ~/.vim/.vimrc<CR>
nmap <leader>s :source ~/.vim/.vimrc<CR>

" Make sure you can write write-protected files if vim is opened with sudo
cnoremap sudow w !sudo tee % >/dev/null<CR>
nmap <leader>e :e ~/.vim/.vimrc<CR>

" SECTION 5) Tags
" =====================================

set tags=./tags;/
nmap <leader>t <C-W><C-]>
nmap <leader>n :tn<CR>

" SECTION 6) Plugins
" ===============================

"   Documentation
"   =============

:helptags ~/.vim/doc


"   SECTION 6a) NerdTree
"   ====================

" Make sure that NerdTree is never the last buffer open by
" closing it if the last remaining file is closed
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

" Close all open buffers on entering a window if the only
" " buffer that's left is the NERDTree buffer
function s:CloseIfOnlyNerdTreeLeft()
    if exists("t:NERDTreeBufName")
        if bufwinnr(t:NERDTreeBufName) != -1
            if winnr("$") == 1
                q
            endif
        endif
    endif
endfunction


" Open NerdTree when opening Vim and show all bookmarks
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1


"   SECTION 6b) Tagbar
"   ==================

" Open Tagbar
nnoremap <silent> <Leader>b :TagbarToggle<CR>
" Set default tagbar ordering to be by order of appearance in file
let g:tagbar_sort=0


"   SECTION 6c) Rainbow Parentheses
"   ===============================

" Configure Rainbow Parentheses to be on by default
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
