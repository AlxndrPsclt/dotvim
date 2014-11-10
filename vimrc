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
set relativenumber

"Set my leader key
let mapleader = ","

"Supprimer les flèches pour utiliser hjkl"
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

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

nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

nnoremap t :tabs<CR>

" Source the vimrc file after saving it
if has("autocmd")
	autocmd bufwritepost .vimrc source $MYVIMRC
endif

"Permet de changer un mot et de sortir automatiquement du mode insertion à la
"fin de ce mot
nmap <leader>c :inoremap <lt>Space> <lt>Space><lt>Esc>:iunmap <lt>lt>Space><lt>CR><CR> cw

:nnoremap <leader>l A<CR><ESC>
:nnoremap <leader>L I<CR><ESC>

function! NumberToggle()
	if(&relativenumber == 1)
		set number
	else
		set relativenumber
	endif
endfunc

nnoremap <leader>re :call NumberToggle()<cr>
