"
" vim-multiple-cursors
"
" https://github.com/terryma/vim-multiple-cursors
"

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

