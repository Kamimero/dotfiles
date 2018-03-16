"
" 基本的な設定
"

" スクロール時の余白確保
set scrolloff=5
" 一行に長い文章を書いていても自動折り返しをしない
set textwidth=0
" バックアップ取らない
set nobackup
" スワップファイル作らない
set noswapfile
" 他で書き換えられたら自動で読み直す
set autoread
" 編集中でも他のファイルを開けるようにする
set hidden
" バックスペースでなんでも消せるように
set backspace=indent,eol,start
" テキスト整形オプション，マルチバイト系を追加
set formatoptions=lmoq
" ビープをならさない
set vb t_vb=
" Exploreの初期ディレクトリ
set browsedir=buffer
" カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,],~
" コマンドをステータス行に表示
set showcmd
" 現在のモードを表示
set showmode
" viminfoファイルの設定
set viminfo='50,<1000,s100,\"50
" モードラインは無効
set modelines=0
" vimを使ってくれてありがとう
set notitle
" undo file (*.un~)を作らない
set noundofile
" タブサイズ
set tabstop=4
" タブを挿入するときの幅
set shiftwidth=4
" 行番号の表示
set number
" マウス有効
set mouse=a
" ウィンドウ幅での折り返しを禁止
set nowrap
" カーソルの位置表示を行う
set ruler
" C言語スタイルのインデントを自動で入れる
set cindent
" コマンドライン行数
set cmdheight=2
" ステータスライン行.
set laststatus=2
" 256色表示
set t_Co=256
" 検索を折り返さない
set nowrapscan
" コマンドラインモードで<tab>でファイル名補完を有効にする
set wildmenu
" 検索結果をハイライト表示にする
set hlsearch
" ファイル種別判定とプラグインを有効化
filetype plugin indent on
" 小文字のみ検索で大文字小文字を無視する、大文字が含まれたら大文字小文字をチェックする
set ignorecase
set smartcase
" ESCのタイムアウト時間
set ttimeoutlen=50

set clipboard=unnamedplus,unnamed

set modifiable

set write

set tags=./tags;

set whichwrap=b,s,h,l,<,>,[,],~

" ペースト時に自動インデントさせない
if &term =~ "xterm"
    let &t_ti .= "\e[?2004h"
    let &t_te .= "\e[?2004l"
    let &pastetoggle = "\e[201~"
    function! XTermPasteBegin(ret)
        set paste
        return a:ret
    endfunction
    noremap <special> <expr> <Esc>[200~ XTermPasteBegin("0i")
    inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
    cnoremap <special> <Esc>[200~ <nop>
    cnoremap <special> <Esc>[201~ <nop>
endif

" ファイルの強制上書き
cmap w!! w !sudo tee % > /dev/null

" vimprocの自動ダウンロード
if has('win32') || has('win64')
let g:vimproc#download_windows_dll = 1
endif

command -nargs=0 ClearUndo call <sid>ClearUndo()
function! s:ClearUndo()
	let old_undolevels = &undolevels
	set undolevels=-1
	exe "normal a \<BS>\<Esc>"
	let &undolevels = old_undolevels
	unlet old_undolevels
endfunction

