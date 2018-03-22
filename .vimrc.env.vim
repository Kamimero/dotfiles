
" neocompleteの自動補完を無効にする場合に有効にする
" let g:disable_auto_complete = 1

" clangの設定
" Linux		: libclangを指定する
" Windows	: 環境変数を使用
if has('unix')
let g:clang_library_path = '/usr/lib/llvm-5.0/lib/libclang.so'
endif

