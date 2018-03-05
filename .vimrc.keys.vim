"
" キー操作関連
"

" =============================================================
" Leader

let mapleader = 't'

 " for unite
nnoremap <Leader>ub :Unite buffer<CR>
nnoremap <Leader>uf :Unite file<CR>
nnoremap <Leader>uo :Unite outline<CR>
nnoremap <Leader>ur :Unite register<CR>

" for caw
nmap <Leader>/ <Plug>(caw:hatpos:toggle)
vmap <Leader>/ <Plug>(caw:hatpos:toggle)
nmap <Leader>\ <Plug>(caw:wrap:toggle)
vmap <Leader>\ <Plug>(caw:wrap:toggle)

" for QuickHighlight
nmap <Leader>m <Plug>(quickhl-manual-this)
xmap <Leader>m <Plug>(quickhl-manual-this)
nmap <Leader>M <Plug>(quickhl-manual-reset)
xmap <Leader>M <Plug>(quickhl-manual-reset)

xmap <Leader>ga <Plug>(EasyAlign)
nmap <Leader>ga <Plug>(EasyAlign)

"
" clang_complete
"

" 関数定義ジャンプ
let g:clang_jumpto_declaration_key = "<Leader>j"
let g:clang_jumpto_declaration_in_preview_key = "<Leader>J"
let g:jedi#goto_command = "<Leader>j"
let g:jedi#goto_assignments_command = "<Leader>g"

" 関数検索
nmap <Leader>p :CtrlPFunky<CR>

" ソースヘッダ切り替え
nmap <Leader>fh :FSHere<CR>
nmap <Leader>fl :FSSplitLeft<CR>
nmap <Leader>fr :FSSplitRight<CR>

" Doxygen
nmap <Leader>d :Dox<CR>

" =============================================================
" Function

map <F2> :VimFiler<CR>
map <F3> :NERDTreeToggle<CR>
map <F4> :TagbarToggle<CR>

" =============================================================
" ESC

inoremap <silent> jj <ESC>
nnoremap <silent> <ESC><ESC> :nohlsearch<CR>
nnoremap <silent> <ESC><ESC><ESC> :QuickhlManualReset<CR>

" =============================================================
" Ctrl

" for neocomplete
imap <C-Space> <C-x><C-o>

" for Gtags
nnoremap <C-g> :Gtags
nnoremap <C-h> :Gtags -f %<CR>
nnoremap <C-j> :GtagsCursor<CR>
nnoremap <C-Down> :cn<CR>
nnoremap <C-Up> :cp<CR>

" for neo-snippet.
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

" for tags
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
" Space

" for unite
nnoremap <Space>uo :Unite outline<CR>
nnoremap <Space>ub :Unite buffer<CR>
nnoremap <Space>uf :Unite file<CR>

" =============================================================
" Other

nnoremap <C-[> <C-T>
" ファイル強制上書き
cnoremap w!! w !sudo tee > /dev/null %<CR> :e!<CR>

