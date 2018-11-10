"----------------------------------------------------------------------------
"
" vim-quickhl
"
" see: https://github.com/t9md/vim-quickhl
" see: http://pachicoma.hateblo.jp/entry/2017/03/08/Neovim%E3%81%A7%E8%A4%87%E6%95%B0%E3%81%AE%E5%8D%98%E8%AA%9E%E3%82%92%E3%83%8F%E3%82%A4%E3%83%A9%E3%82%A4%E3%83%88%28vim-quickhl_vim%29_%40Windows10
" echo "load vim-quickhl configration file."

nmap <Leader>m	<Plug>(quickhl-manual-this)
xmap <Leader>m	<Plug>(quickhl-manual-this)
nmap <Leader>M	:<C-u>QuickhlManualReset<CR>

let g:quickhl_manual_colors =
\ [
\   'gui=bold ctermfg=16  ctermbg=153 guifg=#ffffff guibg=#0a7383',
\   'gui=bold ctermfg=7   ctermbg=1   guibg=#a07040 guifg=#ffffff',
\   'gui=bold ctermfg=16  ctermbg=2   guibg=#4070a0 guifg=#ffffff',
\   'gui=bold ctermfg=16  ctermbg=3   guibg=#3A8961 guifg=#ffffff',
\   'gui=bold ctermfg=7   ctermbg=4   guibg=#70a040 guifg=#ffffff',
\   'gui=bold ctermfg=7   ctermbg=5   guibg=#0070e0 guifg=#ffffff',
\   'gui=bold ctermfg=16  ctermbg=6   guibg=#007020 guifg=#ffffff',
\   'gui=bold ctermfg=7   ctermbg=21  guibg=#d4a00d guifg=#ffffff',
\   'gui=bold ctermfg=7   ctermbg=22  guibg=#06287e guifg=#ffffff',
\   'gui=bold ctermfg=7   ctermbg=45  guibg=#5b3674 guifg=#ffffff',
\   'gui=bold ctermfg=16  ctermbg=16  guibg=#4c8f2f guifg=#ffffff',
\   'gui=bold ctermfg=7   ctermbg=50  guibg=#1060a0 guifg=#ffffff',
\   'gui=bold ctermfg=7   ctermbg=56  guibg=#a0b0c0 guifg=black'
\ ]
