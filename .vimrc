syntax on
set foldmethod=syntax
set number
set ruler
set list
set listchars=trail:¿,tab:▸\ ,eol:¬
set hlsearch
set undofile
set colorcolumn=85
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

colorscheme Tomorrow-Night-Bright
