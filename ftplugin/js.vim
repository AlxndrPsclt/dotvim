setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2
setlocal expandtab

set foldmethod=indent
"%foldo!


"Hightlights past 80 line
highlight OverLength ctermbg=240 ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
