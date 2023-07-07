set clipboard=unnamedplus,unnamed,autoselect

set hidden
set nocompatible
syntax on
set nu
set ruler

set list
set listchars=tab:>-,trail:_
set tabstop=4
set shiftwidth=4
set ai
syn on
set textwidth=80

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set nocp
filetype plugin on

" For homebrew on intel silicon:
" set rtp+=/usr/local/opt/fzf
" For Homebrew on apple silicon
set rtp+=/opt/homebrew/opt/fzf

call plug#begin()
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <C-g> :GFiles<CR>
nnoremap <silent> <C-o> :Buffers<CR>
nnoremap <C-f> :Rg!

" Spell checker
" ]s - next mispelled word
" [s - last mispelled word
" z= - see suggestions
" zg - accept word
""nnoremap <C-q> :setlocal spell spelllang=en_us
""nnoremap <C-m> :set nospell
nnoremap <C-t> !}fold -s

" Replacing grep with ripgrep
set grepprg=rg\ --vimgrep\ --smart-case\ --follow
