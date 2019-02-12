setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2

setlocal expandtab

set foldmethod=indent
set foldlevel=1
let g:scFlash = 1
let g:scSplitSize = 25

"Supercollider execute code shortcut
nmap <leader><return> <F5>
nmap <leader><space> <F6>
nmap <C-return> <F6>
nmap <silent> <leader>sc :SClangStart<CR>
