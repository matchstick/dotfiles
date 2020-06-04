" File: .exrc
" Desc: version-independent vi options
"
:set showmode
:set nomesg
:set wm=5
:set sm
:set autoindent
:set tabstop=8
:set autowrite
:set magic
:set bg=dark
:source $HOME/.vi/wordlist
:set textwidth=79
:set nu

" Command below contains control characters
map T !}fmt 
map Y y$
map \ :!ll

" Command below contains control characters
map K :w :!aspell -c % :e

:ab teh the
:ab Teh The
:ab liek like
:ab Liek Like
:ab tehn then
:ab Tehn Then
:ab tehm them
