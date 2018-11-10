"----------------------------------------------------------------------------
"
" vim-multiple-cursors
"
" see: https://github.com/terryma/vim-multiple-cursors
" echo "load vim-multiple-cursors configration file."

" マルチカーソル時にNoeCompleteを無効にする
function! Multiple_cursors_before()
    if exists(':NeoCompleteLock') == 2
        exe 'NeoCompleteLock'
    endif
endfunction
function! Multiple_cursors_after()
    if exists(':NeoCompleteUnlock') == 2
        exe 'NeoCompleteUnlock'
    endif
endfunction

