"----------------------------------------------------------------------------
"
" ctrlp-funky
"
" echo "load ctrlp configration file."

let g:ctrlp_root_markers = ['.ctrlp']

" デフォルト正規表現
let g:ctrlp_regexp = 1

" 最大検索数は無限
let g:ctrlp_max_files = 0

" ヒット数は多めに変更
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:30,results:30'

let g:ctrlp_show_hidden = 1

" 遅延再描画
let g:ctrlp_lazy_update = 1

" 無視するファイル種別
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(exe|so|dll|ro|d)$',
    \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
    \ }
