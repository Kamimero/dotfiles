"
" .vimrc
"

if !&compatible
  set nocompatible
endif

" reset augroup
augroup MyAutoCmd
    autocmd!
augroup END

" プラグイン管理はdeinを使用する
if filereadable(expand('~/dotfiles/.vimrc.dein.vim'))
    source ~/dotfiles/.vimrc.dein.vim
endif
" 環境変数
if filereadable(expand('~/dotfiles/.vimrc.env.vim'))
	source ~/dotfiles/.vimrc.env.vim
endif
" 基本的な設定
if filereadable(expand('~/dotfiles/.vimrc.basic.vim'))
    source ~/dotfiles/.vimrc.basic.vim
endif
" Vimプラグインの設定
if filereadable(expand('~/dotfiles/.vimrc.plugins.vim'))
    source ~/dotfiles/.vimrc.plugins.vim
endif
" キー関連設定
if filereadable(expand('~/dotfiles/.vimrc.keys.vim'))
    source ~/dotfiles/.vimrc.keys.vim
endif
" カラースキーマ関連
if filereadable(expand('~/dotfiles/.vimrc.colorscheme.vim'))
	source ~/dotfiles/.vimrc.colorscheme.vim
endif

" -------------------------------------------------------------
" ファイル保存時のエンコーディング設定
if has('win32unix')
    autocmd BufWrite *.{txt,TXT} set fileencoding=cp932 | set fileformat=dos
    autocmd BufWrite *.{c,h,cpp} set fileencoding=cp932 | set fileformat=dos
elseif has('win32')
    autocmd BufWrite *.{txt,TXT} set fileencoding=cp932 | set fileformat=dos
    autocmd BufWrite *.{c,h,cpp} set fileencoding=cp932 | set fileformat=dos
endif

syntax enable
