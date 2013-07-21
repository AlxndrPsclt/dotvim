execute pathogen#infect()
syntax on

"filetype plugin on
filetype plugin indent on

"Utiliser des tabulations de longueur 4
set ts=4 sts=4 sw=4 noexpandtab

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
set list!

"Permet d'utiliser 256 couleurs
set t_Co=256

"Utiliser le theme vivid chalk
colorscheme slate

"Rajoutte une règle horisontale sur la ligne courante
set cursorline

"Rajoutte les numéros de ligne
set number

"Utiliser jj au lieu de Echap pour quitter le mode inser
inoremap jj <ESC>

"Racourcis pour gundo
imap <F2> jj :GundoToggle<CR>
nmap <F2> :GundoToggle<CR>

"Racourcis pour Nerdtree
imap <F1> jj :NERDTreeToggle<CR>
nmap <F1> :NERDTreeToggle<CR>
"noremap <F1> :NERDTreeToggle<CR>

"Racourcis pour naviguer entre les splits screens
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

"Permet d'afficher toujours le nom du fichier en bas
set modeline
set ls=2

set undodir=~/.vim/undodir
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload"
