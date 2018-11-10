"----------------------------------------------------------------------------
"
" プラグイン管理
"

let s:dot_vim = expand("~/.vim")
let s:dein = "/dein"
let s:store = "/repos/github.com/Shougo/dein.vim"
let s:dein_dir = s:dot_vim . s:dein
let s:dein_store_dir = s:dot_vim . s:dein . s:store

let s:dot_dir = expand("~/dotfiles")
let s:tom_dir = expand(s:dot_dir . "/toml")
let s:tom_reg = s:tom_dir . "/*.toml"

if !isdirectory(s:dein_store_dir)
    if v:version < 800
        call system('git clone https://github.com/Shougo/dein.vim -b 1.5 ' . shellescape(s:dein_store_dir))
    else
        call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_store_dir))
    endif
endif

let &runtimepath = s:dein_store_dir .",". &runtimepath

if dein#load_state(s:dein_dir)
    call dein#begin(s:dein_dir)
    let s:toms = split(expand(s:tom_reg), "\n")
    for s:tom in s:toms
        call dein#load_toml(s:tom)
    endfor
    call dein#end()
    call dein#save_state()
endif

if has('vim_starting') && dein#check_install()
    call dein#install()
endif

