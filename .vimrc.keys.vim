"----------------------------------------------------------------------------
"
" Key
"
" echom "Load key configration file."

"----------------------------------------------------------------------------
" Function key.
if dein#check_install(["unite.vim"]) == 0
    map <F2> :Unite<CR>
endif
if dein#check_install(["nerdtree"]) == 0
    map <F3> :NERDTreeToggle<CR>
endif
if dein#check_install(["tagbar"]) == 0
    map <F4> :TagbarToggle<CR>
endif
map  <F5> g<C-]>
map  <F6> :<C-u>tab stj <C-R>=expand('<cword>')<CR><CR>
imap <F8> <C-x><C-o>


"----------------------------------------------------------------------------
" Escape key.
inoremap jj <ESC>
nnoremap <ESC><ESC> :nohlsearch<CR>

"----------------------------------------------------------------------------
" s key.
nnoremap s  <Nop>
nnoremap sc <C-w>q
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap ss :sp<CR>
nnoremap sv :vs<CR>
nnoremap st :tabnew<CR>
nnoremap sn :tabnext<CR>
nnoremap sp :tabprevious<CR>
nnoremap so :only<CR>
nnoremap sb :Unite buffer<CR>
nnoremap se :WinResizerStartResize<CR>
nnoremap sw :w<CR>
if has('unix')
vnoremap sy :w !cat > /dev/clipboard<CR><CR>
endif

"----------------------------------------------------------------------------
" Leader key.
" let mapleader = 't'

" nmap <Leader>d    :Dox<CR>
nmap <Leader>p    :CtrlPFunky<CR>
nmap <Leader>ub   :<C-u>Unite buffer<CR>
nmap <Leader>uf   :Unite file<CR>
nmap <Leader>uo   :Unite outline<CR>
nmap <Leader>ur   :Unite register<CR>
nmap <Leader>run  :QuickRun<CR>
nmap <Leader>open <Plug>(openbrowser-smart-search)
nmap <Leader>sh   :VimShell<CR>


" for neo-snippet.
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

" for tags
nmap <C-j> g<C-]>
nnoremap <C-]> g<C-]>

autocmd FileType c imap <buffer> <C-z> ->


nnoremap <C-[> <C-T>
" ファイル強制上書き
cnoremap w!! w !sudo tee > /dev/null %<CR> :e!<CR>

