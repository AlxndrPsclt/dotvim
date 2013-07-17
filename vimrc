execute pathogen#infect()
syntax on
filetype plugin on

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
set list!

"Permet d'utiliser 256 couleurs
set t_Co=256

"Utiliser le theme vivid chalk
colorscheme vividchalk

"Rajoutte une règle horisontale sur la ligne courante
set cursorline

"Rajoutte les numéros de ligne
set number

"Utiliser jj au lieu de Echap pour quitter le mode inser
inoremap jj <ESC>

"Racourcis pour gundo
nnoremap <F6> :GundoToggle<CR>
