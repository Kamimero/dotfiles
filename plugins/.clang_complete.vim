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
let g:clang_complete_auto = 0
" QuickFixWindowを表示しない
let g:clang_hl_errors = 0

if has('unix')
    " ライブラリ使用＆パス指定
    let g:clang_use_library   = 1
    let g:clang_library_path  = '/usr/lib/llvm-3.8/lib/libclang.so.1'
    let g:clang_user_options  = '-std=c++11'
elseif has('win32') || has('win64')
    let g:clang_user_options  = '-std=c++11'
endif

