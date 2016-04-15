"execute pathogen#infect()
set nocompatible

"Vundle Setup
filetype off
set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Plugin 'gmarik/vundle'
Plugin 'VundleVim/Vundle.vim'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'Raimondi/delimitMate'
Plugin 'bling/vim-airline'
Plugin 'ervandew/supertab'
Plugin 'flazz/vim-colorschemes'
Plugin 'honza/vim-snippets'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'kien/rainbow_parentheses.vim'
"Plugin 'kshenoy/vim-signature'
Plugin 'scrooloose/nerdtree'
Plugin 'sjl/gundo.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/mru.vim'
Plugin 'SirVer/ultisnips'
"Plugin 'wincent/command-t'
Plugin 'kien/ctrlp.vim'
Plugin 'luochen1990/rainbow'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-abolish'
Plugin 'rking/ag.vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'EvanDotPro/nerdtree-chmod'
Plugin 'djoshea/vim-autoread'
Plugin 'tmux-plugins/vim-tmux-focus-events'


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

"Show buffers as vim-airline
let g:airline#extensions#tabline#enabled = 1

"Use patched fonts for airline
"set guifont=Liberation\ Mono\ Powerline\ 12
"let g:airline_powerline_fonts = 1
"if !exists('g:airline_symbols')
"let g:airline_symbols = {}
"endif
"
"" unicode symbols
"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.whitespace = 'Ξ'




"Rajoutte les numéros de ligne
set relativenumber

"Always do global line searches (add flag g at the end of a search)
set gdefault

"Set my leader key
let mapleader = ","

"Supprimer les flèches pour utiliser hjkl"
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

"utiliser jj au lieu de echap pour quitter le mode inser
inoremap jj <esc>

"Writing :w quickly saves the file, even in insert mode"
inoremap :w <esc>:w<CR>

"Racourcis pour gundo
imap <F2> jj :GundoToggle<CR>
nmap <F2> :GundoToggle<CR>

"Racourcis pour Nerdtree
imap <F1> jj :NERDTreeToggle<CR>
nmap <F1> :NERDTreeToggle<CR>
"noremap <F1> :NERDTreeToggle<CR>

"##Working with Splits"
"###Create new splits in a more natural way than vim defaults"
set splitbelow
set splitright

"###Shortcuts to navigate between splits"
nmap <leader>8 :wincmd k<CR>
nmap <leader>2 :wincmd j<CR>
nmap <leader>4 :wincmd h<CR>
nmap <leader>6 :wincmd l<CR>

"Resizing windows with + and -
if bufwinnr(1)
	map + <C-W>>
	map - <C-W><
endif

"Toggle RainbowParenthese
nmap <silent> <leader>r :RainbowParenthesesToggle<CR>


"Toggle RainbowParenthese
nmap <silent> <leader>r :RainbowParenthesesToggle<CR>

"Permet d'afficher toujours le nom du fichier en bas
set modeline
set ls=2

set undodir=~/.vim/undodir
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload"

" Bubble single lines (Move the lines with the keyboard)
nmap <Esc>[1;3A ddkP
nmap <Esc>[1;3B ddp
" " Bubble multiple lines
vmap <Esc>[1;3A xkP`[V`]
vmap <Esc>[1;3B xp`[V`]


" Source the vimrc file after saving it
if has("autocmd")
	autocmd bufwritepost .vimrc source $MYVIMRC
endif

"Edit the vimrc with leader v
nmap <leader>v :tabedit $MYVIMRC<CR>

" Toggle spell checking on and off with `,s`
nmap <silent> <leader>s :set spell!<CR>

" Allows to jump forward and backward 10 words at once
nmap <silent> <leader>w 10w
nmap <silent> <leader>W 10b

"Correct the next erroronous with the first suggested correction
nmap <silent> <leader>z h]s1z=
"Skips the next error
nmap <silent> <leader>Z ]sw

"Maps leader d to Jump to next digit and leader D to jump to previous digit
nmap <silent> <leader>d /\d<CR>
nmap <silent> <leader>D ?\d<CR>

"Maps leader m to show the list of marks
nmap <silent> <leader>m :marks<CR>


" copy current file name (relative/absolute) to system clipboard (Linux
" version)
" relative path (src/foo.txt)
nnoremap <leader>crf :let @"=expand("%")<CR>

" absolute path (/something/src/foo.txt)
nnoremap <leader>caf :let @"=expand("%:p")<CR>

" filename (foo.txt)
nnoremap <leader>cfn :let @"=expand("%:t")<CR>

" directory name (/something/src)
nnoremap <leader>cdi :let @"=expand("%:p:h")<CR>


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

" tabs to naviagate in ultiSnips instead of c-j, c-k
let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-a>"
"let g:UltiSnipsJumpBackwardTrigger="<c-s>"

"Edit snippets in a vertical snip
let g:UltiSnipsEditSplit="vertical"

"Tells yankring where to store yankring history"
let g:yankring_history_dir = '/home/alex/.vim/bundle/Yankring'


"Some Ocaml shit
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"
imap <leader>l <C-x><C-o>
