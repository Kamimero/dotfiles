"----------------------------------------------------------------------------
"
" syntastic
"
" see: https://github.com/vim-syntastic/syntastic
" echo "load syntastic configration file."

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0

" シンタックスチェックウィンドウの自動開閉
let g:syntastic_auto_loc_list = 0

" オープン時にチェックする・しない
let g:syntastic_check_on_open = 0

" ファイル書き込み時にチェックする・しない
let g:syntastic_check_on_wq = 1

"
" C言語用
"

" チェッカーはClangを使用
let g:syntastic_c_compiler = 'clang'
" コンフィグはclang_complete共通
let g:syntastic_c_config_file='.clang_complete'

"
" Bash
"
let g:syntastic_sh_shellcheck_args = "-e SC2068,SC2086"
