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
Plugin 'DavidEGx/ctrlp-smarttabs'
Plugin 'luochen1990/rainbow'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-abolish'
Plugin 'rking/ag.vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'EvanDotPro/nerdtree-chmod'
Plugin 'djoshea/vim-autoread'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tmux-plugins/vim-tmux-focus-events'
"Some markdown glitter
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'nelstrom/vim-markdown-folding'
"Elixir plugin
Plugin 'elixir-lang/vim-elixir'
Plugin 'junegunn/vim-easy-align'
Plugin 'davidhalter/jedi-vim'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'easymotion/vim-easymotion'
Plugin 'derekwyatt/vim-scala'
Plugin 'haoyu953/pride.vim'
Plugin 'dermusikman/sonicpi.vim'
Plugin 'ekalinin/Dockerfile.vim'

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
set ts=2 sts=2 sw=2 noexpandtab

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
set list!

"Permet d'utiliser 256 couleurs
set t_Co=256

"Utiliser le theme torte
"colorscheme torte
colorscheme pride

"permet de laisser quelques lignes en bas du texte
set scrolloff=8

"Rajoutte une règle horisontale sur la ligne courante
set cursorline

"Show buffers as vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

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

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ''



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
imap <F1> jj :NERDTreeTabsToggle<CR>
nmap <F1> :NERDTreeTabsToggle<CR>
"noremap <F1> :NERDTreeToggle<CR>

"##Working with Splits"
"###Create new splits in a more natural way than vim defaults"
set splitbelow
set splitright

"###Shortcuts to navigate between splits"
nmap <S-up>8 :wincmd k<CR>
nmap <S-down>2 :wincmd j<CR>
nmap <S-left>4 :wincmd h<CR>
nmap <S-right>6 :wincmd l<CR>

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


" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

imap <leader>l <C-x><C-o>

"A command to allow saving a file using sudo even if you didn't use sudo vim
command W w !sudo tee % > /dev/null


function Ccase() range
	echo system('echo '.shellescape(join(getline(a:firstline, a:lastline), "\n")).'| ~/.vim/scripts/ccase.py')
endfunction

set hlsearch


"Adding ctrlp tabs:
let g:ctrlp_extensions = ['smarttabs']


"Adding classic shell aliases to vim bash
let $BASH_ENV = "~/.config/perso/bash_config/bash_aliases"

"Disable session autosave because it's annoying and rarely usefull"
let g:session_autosave = 'no'


"Paste toggle to allow clean pasting without useless auto indentation
set pastetoggle=<leader>p
