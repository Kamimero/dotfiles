"
" カラースキーマ関連
"

if has("win32") || has("win64")
	if has("gui_running")
		colorscheme molokai
		hi Comment guifg   = #00FF00
	else
		hi Comment ctermfg = lightgreen
		hi Visual  ctermbg = 236
		hi PreProc ctermfg = White
	endif
endif

function! s:get_syn_id(transparent)
	let synid = synID(line("."), col("."), 1)
	if a:transparent
		return synIDtrans(synid)
	else
		return synid
	endif
endfunction
function! s:get_syn_attr(synid)
	let name = synIDattr(a:synid, "name")
	let ctermfg = synIDattr(a:synid, "fg", "cterm")
	let ctermbg = synIDattr(a:synid, "bg", "cterm")
	let guifg = synIDattr(a:synid, "fg", "gui")
	let guibg = synIDattr(a:synid, "bg", "gui")
	return {
		\ "name": name,
		\ "ctermfg": ctermfg,
		\ "ctermbg": ctermbg,
		\ "guifg": guifg,
		\ "guibg": guibg}
endfunction
function! s:get_syn_info()
	let baseSyn = s:get_syn_attr(s:get_syn_id(0))
	echo "name: " . baseSyn.name .
		\ " ctermfg: " . baseSyn.ctermfg .
		\ " ctermbg: " . baseSyn.ctermbg .
		\ " guifg: " . baseSyn.guifg .
		\ " guibg: " . baseSyn.guibg
	let linkedSyn = s:get_syn_attr(s:get_syn_id(1))
	echo "link to"
	echo "name: " . linkedSyn.name .
		\ " ctermfg: " . linkedSyn.ctermfg .
		\ " ctermbg: " . linkedSyn.ctermbg .
		\ " guifg: " . linkedSyn.guifg .
		\ " guibg: " . linkedSyn.guibg
endfunction
command! SyntaxInfo call s:get_syn_info()
