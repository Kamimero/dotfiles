REM
REM 初期化バッチ
REM

REM GVim/Vimのシンボリックリンクを作成
mklink %HOMEPATH%"\.vimrc" %HOMEPATH%"\dotfiles\.vimrc"
mklink %HOMEPATH%"\_gvimrc" %HOMEPATH%"\dotfiles\_gvimrc"

