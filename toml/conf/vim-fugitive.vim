"----------------------------------------------------------------------------
"
" vim-fugitive
"
" echom "Load vim-fugitive configration file."

augroup VimFugitiveAutoGroup
	autocmd!
	autocmd FileType gitcommit set fileencoding=utf8 | set fileformat=unix
augroup END

