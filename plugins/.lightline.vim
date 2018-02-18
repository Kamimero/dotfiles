"
" lightline
"
" https://github.com/itchyny/lightline.vim
"

let g:lightline = {
    \ 'colorscheme': 'landscape',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'fugitive', 'readonly', 'absolutepath', 'modified' ] ],
    \ },
    \ 'component_function': {
    \   'absolutepath': 'AbsolutePath'
    \ },
    \ }

" パス取得
function! AbsolutePath()
    let a = substitute(expand('%:p'), $HOME, '~', '')
    if a == ""
        return 'orz=3'
    elseif strlen(a) > 60
        return a[strlen(a)-60:]
    else
        return a
    endif
endfunction
