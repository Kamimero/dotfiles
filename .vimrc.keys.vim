"
" キー操作関連
"

"
" Fキー
"

map  <F2> :VimFiler<CR>
map  <F3> :NERDTreeToggle<CR>
map  <F4> :TagbarToggle<CR>
map  <F5> g<C-]>
map  <F6> :<C-u>tab stj <C-R>=expand('<cword>')<CR><CR>
imap <F8> <C-x><C-o>

"
" Leaderキー
"
" d  : Doxygenヘッダ挿入
" ga : アライン調整
" p  : 関数検索
" ub : Unite Buffer
" uf : Unite File
" uo : Unite Outline
" ur : Unite Register
"
" m  : ハイライト
" M  : ハイライトキャンセル
" /  : コメントアウト //
" \  : コメントアウト /**/
"

let mapleader = 't'

nmap <Leader>d    :Dox<CR>
xmap <Leader>ga   <Plug>(EasyAlign)
nmap <Leader>ga   <Plug>(EasyAlign)
nmap <Leader>p    :CtrlPFunky<CR>
nmap <Leader>ub   :Unite buffer<CR>
nmap <Leader>uf   :Unite file<CR>
nmap <Leader>uo   :Unite outline<CR>
nmap <Leader>ur   :Unite register<CR>
nmap <Leader>/    <Plug>(caw:hatpos:toggle)
vmap <Leader>/    <Plug>(caw:hatpos:toggle)
nmap <Leader>\    <Plug>(caw:wrap:toggle)
vmap <Leader>\    <Plug>(caw:wrap:toggle)
nmap <Leader>m    <Plug>(quickhl-manual-this)
xmap <Leader>m    <Plug>(quickhl-manual-this)
nmap <Leader>M    <Plug>(quickhl-manual-reset)
xmap <Leader>M    <Plug>(quickhl-manual-reset)
nmap <Leader>run  :QuickRun<CR>
nmap <Leader>open <Plug>(openbrowser-smart-search)
nmap <Leader>sh   :VimShell<CR>

"
" clang_complete
"

" 関数定義ジャンプ
let g:clang_jumpto_declaration_key = "<Leader>j"
let g:clang_jumpto_declaration_in_preview_key = "<Leader>J"
let g:jedi#goto_command = "<Leader>j"
let g:jedi#goto_assignments_command = "<Leader>g"

" 関数検索

" ソースヘッダ切り替え
nmap <Leader>fh :FSHere<CR>
nmap <Leader>fl :FSSplitLeft<CR>
nmap <Leader>fr :FSSplitRight<CR>


" =============================================================
" ESC

inoremap <silent> jj <ESC>
nnoremap <silent> <ESC><ESC> :nohlsearch<CR>
nnoremap <silent> <ESC><ESC><ESC> :QuickhlManualReset<CR>

"
" Ctrlキー
"
" h		左移動
" j		下移動
" k		上移動
" l		右移動
"
imap <C-f> <C-x><C-o>
imap <C-h> <Left>
imap <C-j> <Down>
imap <C-k> <Up>
imap <C-l> <Right>

" for neo-snippet.
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

" for tags
nmap <C-j> g<C-]>
nmap <C-J> :<C-u>tab stj <C-R>=expand('<cword>')<CR><CR>
nnoremap <C-]> g<C-]>

" =============================================================
" S

nnoremap s <Nop>
nnoremap sc <C-w>q
nnoremap sx :q!<CR>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>H
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap st :<C-u>tabnew<CR>
nnoremap sT :<C-u>Unite tab<CR>
nnoremap sb :<C-u>Unite buffer<CR>
nnoremap sB :<C-u>Unite buffer_tab<CR>
nnoremap sn gt
nnoremap sp gt
nnoremap so :only<CR>
nnoremap se :WinResizerStartResize<CR>
nnoremap sw :w<CR>
if has('unix')
vnoremap sy :w !cat > /dev/clipboard<CR><CR>
endif

" =============================================================
" Other

nnoremap <C-[> <C-T>
" ファイル強制上書き
cnoremap w!! w !sudo tee > /dev/null %<CR> :e!<CR>

