set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/Vundle.vim'

let g:go_fmt_command = "goimports"
Plugin 'fatih/vim-go'

Plugin 'Valloric/YouCompleteMe'

"Plugin 'bling/vim-airline'

call vundle#end()

" Now we can turn our filetype functionality back on
filetype plugin indent on

" Airline
let g:airline#extensions#default#enabled = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = '**'
let g:airline#extensions#tabline#left_alt_sep = '|'

set bg=dark
set ttyfast
set modeline
set hlsearch
set showcmd
set completeopt-=preview
nnoremap % :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>
nnoremap ww :wincmd w<CR>
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

if has("autocmd")
    " When editing a file, always jump to the last cursor position
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" defaults
set list
set listchars=tab:>-,trail:_
set tabstop=4
set shiftwidth=4
set ai
syn on
set textwidth=78

" markdown
au BufRead,BufNewFile *.md set filetype=markdown

" go
au FileType go setl tabstop=4
au FileType go setl shiftwidth=4
au FileType go setl textwidth=1000
au FileType go setl number
au FileType go setl nolist

" yaml
au FileType yaml setl indentkeys-=<:>
au FileType yaml setl tabstop=2
au FileType yaml setl shiftwidth=2
au FileType yaml setl expandtab
au FileType yaml setl number

source ~/.exrc
