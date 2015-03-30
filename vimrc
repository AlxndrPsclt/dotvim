"execute pathogen#infect()
set nocompatible

"Vundle Setup
filetype off
set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'Raimondi/delimitMate'
Plugin 'bling/vim-airline'
Plugin 'ervandew/supertab'
Plugin 'flazz/vim-colorschemes'
Plugin 'honza/vim-snippets'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'kshenoy/vim-signature'
Plugin 'scrooloose/nerdtree'
Plugin 'sjl/gundo.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/mru.vim'
Plugin 'SirVer/ultisnips'
Plugin 'wincent/command-t'

call vundle#end()

syntax on

"filetype plugin on
filetype on
filetype indent on
filetype plugin on

"Mettre les fichier swap .swp et .swo dans un dossier spécifique et non dans
"le dossier courant
set backupdir=/tmp
set directory=/tmp

"Utiliser des tabulations de longueur 4
set ts=4 sts=4 sw=4 noexpandtab

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
set list!

"Permet d'utiliser 256 couleurs
set t_Co=256

"Utiliser le theme torte
colorscheme torte

"permet de laisser quelques lignes en bas du texte
set scrolloff=8

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

"Hightlights past 80 line
highlight OverLength ctermbg=240 ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

"Permet de déplacer automatiquement des lignes
nnoremap <Alt-j> :m .+1<CR>==
nnoremap <Alt-k> :m .-2<CR>==
inoremap <Alt-j> <Esc>:m .+1<CR>==gi
inoremap <Alt-k> <Esc>:m .-2<CR>==gi
vnoremap <Alt-j> :m '>+1<CR>gv=gv
vnoremap <Alt-k> :m '<-2<CR>gv=gv

"nnoremap t :tabs<CR>

" Source the vimrc file after saving it
if has("autocmd")
	autocmd bufwritepost .vimrc source $MYVIMRC
endif

" Toggle spell checking on and off with `,s`
nmap <silent> <leader>s :set spell!<CR>

" Allows to jump forward and backward 10 words at once
nmap <silent> <leader>w 10w
nmap <silent> <leader>W 10b

"Correct the next erroronous with the first suggested correction
nmap <silent> <leader>z h]s1z=
"Skips the next error
nmap <silent> <leader>Z ]sw



"Permet de changer un mot et de sortir automatiquement du mode insertion à la
"fin de ce mot
nmap <leader>c :inoremap <lt>Space> <lt>Space><lt>Esc>:iunmap <lt>lt>Space><lt>CR><CR> caw

:nnoremap <leader>l A<CR><ESC>
:nnoremap <leader>L I<CR><ESC>

"Permet d'afficher la liste des jumps
nnoremap <leader>j :jumps<CR>

function! NumberToggle()
	if(&relativenumber == 1)
		set number
	else
		set relativenumber
	endif
endfunc

nnoremap <leader>re :call NumberToggle()<cr>

"Use tabs to naviagate in ultiSnips instead of c-j, c-k
let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-a>"
"let g:UltiSnipsJumpBackwardTrigger="<c-s>"

"Edit snippets in a vertical snip
let g:UltiSnipsEditSplit="vertical"

"Tells yankring where to store yankring history"
let g:yankring_history_dir = '/home/alex/.vim/bundle/Yankring'
