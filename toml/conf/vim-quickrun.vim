"----------------------------------------------------------------------------
"
" vim-quickrun
"
" see: https://github.com/thinca/vim-quickrun
" echo "load vim-quickrun configration file."

let g:quickrun_no_default_key_mappings = 1
let g:quickrun_config = get(g:, 'quickrun_config', {})
let g:quickrun_config._ = {
\	'runner':                          'vimproc',
\ 	'runner/vimproc/updatetime':       60,
\ 	'outputter':                       'error',
\ 	'outputter/error/success':         'buffer',
\ 	'outputter/error/error':           'quickfix',
\ 	'outputter/buffer/split':          ':rightbelow 8sp',
\ 	'outputter/buffer/close_on_empty': 1,
\	'hook/nuko/enable':                1,
\	'hook/nuko/wait':                  3,
\ }
