
" アンドゥバッファのクリア
command! -nargs=0 ClearUndo call <sid>ClearUndo()
function! s:ClearUndo()
	let old_undolevels = &undolevels
	set undolevels=-1
	exe "normal a \<BS>\<Esc>"
	let &undolevels = old_undolevels
	unlet old_undolevels
endfunction

" vモードの置換連続ペースト用
function! Put_text_without_override_register()
	let line_len = strlen(getline('.'))
	execute "normal! `>"
	let col_loc = col('.')
	execute 'normal! gv"_x'
	if line_len == col_loc
		execute 'normal! p'
	else
		execute 'normal! P'
	endif
endfunction
xnoremap <silent> p :call Put_text_without_override_register()<CR>
