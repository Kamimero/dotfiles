
" キーバインディングを無効にする
let g:clang_jumpto_declaration_key = ""

if has('unix')
	" デバッグレベル
	let g:clang_debug         = 0
	" 自動補完は無効
	let g:clang_complete_auto = 0
	" ライブラリ使用＆パス指定
	let g:clang_use_library   = 1
	let g:clang_library_path  = '/usr/lib/llvm-3.8/lib/libclang.so.1'
	" エラーが出たら表示なのかな？
	let g:clang_compete_copen = 1
	let g:clang_hl_errors     = 1

	let g:clang_user_options  = '-std=c++11'
elseif has('win32')
	" デバッグレベル
	let g:clang_debug         = 0
	" 自動補完は無効
	let g:clang_complete_auto = 0
	" エラーが出たら表示なのかな？
	let g:clang_compete_copen = 0
	let g:clang_hl_errors     = 1
	let g:clang_user_options  = '-std=c++11'
endif

