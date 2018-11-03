"
" dein
"

" dein自体の自動インストール
let s:cache_home = empty($XDG_CACHE_HOME) ? expand('~/.vim') : $XDG_CACHE_HOME
let s:dein_dir = s:cache_home . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if !isdirectory(s:dein_repo_dir)
    call system('git clone https://github.com/Shougo/dein.vim -b 1.0 ' . shellescape(s:dein_repo_dir))
endif
let &runtimepath = s:dein_repo_dir .",". &runtimepath

" プラグイン読み込み＆キャッシュ作成
let s:toml_file = '~/dotfiles/.dein.toml'
if dein#load_state(s:dein_dir)
    call dein#begin(s:dein_dir, [$MYVIMRC, s:toml_file])
    call dein#load_toml(s:toml_file)
    call dein#end()
    call dein#save_state()
endif

" 不足プラグインの自動インストール
if has('vim_starting') && dein#check_install()
    call dein#install()
endif

" Add the dein installation directory into runtimepath
" set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" if dein#load_state('~/.cache/dein')
" 	call dein#begin('~/.cache/dein')
" 	call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
" 	call dein#add('Shougo/deoplete.nvim')
" 	if !has('nvim')
"     	call dein#add('roxma/nvim-yarp')
" 		call dein#add('roxma/vim-hug-neovim-rpc')
" 	endif
" 	call dein#end()
" 	call dein#save_state()
" endif
