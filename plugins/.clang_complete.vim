"
" clang_complete
"
" https://github.com/Rip-Rip/clang_complete
"

" キーバインド無効（keys.vimに集約）
let g:clang_jumpto_declaration_key = ""
let g:clang_jumpto_declaration_in_preview_key = ""
" デバッグレベル
let g:clang_debug = 0
" 自動補完無効
let g:clang_complete_auto = 1
" QuickFixWindowを表示しない
let g:clang_hl_errors = 0
" マクロ補完有効
let g:clang_complete_macros = 1
" clangに渡すオプション
let g:clang_user_options  = '-std=c++11'

" 補完時に引数毎補完
" let g:clang_snippets = 1
" よくわからない
" let g:clang_complete_optional_args_in_snippets = 1
" 閉じないから無効
" let g:clang_close_preview = 1

if has('unix')
    " ライブラリ使用＆パス指定
    let g:clang_use_library   = 1
elseif has('win32') || has('win64')
	let g:clang_use_path = "C:\MinGW\lib\gcc\mingw32\6.3.0\include\c++"
endif

