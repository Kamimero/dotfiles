"----------------------------------------------------------------------------
"
" neosnippet
"
" see: https://github.com/Shougo/neosnippet.vim
" echom "load nerdtree configration file."

" キーコンフィグはkeysに統一.
" imap <C-k> <Plug>(neosnippet_expand_or_jump)
" smap <C-k> <Plug>(neosnippet_expand_or_jump)
" xmap <C-k> <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
" if has('conceal')
"   set conceallevel=2 concealcursor=niv
" endif

" スニペットファイル参照先
let g:neosnippet#snippets_directory = '~/.vim/dein/.cache/.vimrc/.dein/snippets/,~/.vim/add-snippets'

