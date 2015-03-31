setlocal tabstop=3
setlocal softtabstop=4
setlocal shiftwidth=4

setlocal expandtab

set foldmethod=indent
"%foldo!


"Hightlights past 80 line
highlight OverLength ctermbg=240 ctermfg=white guibg=#592929
match OverLength /\%81v.\+/


"Permet de ne pas avoie l'autocomplétion automatique, mais seulement quand on
"le demande
let g:jedi#popup_on_dot = 0

"N'ouvre pas de grosse fenetre avec toute la doc
"let g:jedi#pydoc = "K"
