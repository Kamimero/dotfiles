"
" syntastic
"
" https://github.com/vim-syntastic/syntastic
"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0

" �V���^�b�N�X�`�F�b�N�E�B���h�E�̎����J��
let g:syntastic_auto_loc_list = 0
" �I�[�v�����Ƀ`�F�b�N����E���Ȃ�
let g:syntastic_check_on_open = 0
" �t�@�C���������ݎ��Ƀ`�F�b�N����E���Ȃ�
let g:syntastic_check_on_wq = 0

"
" C����p
"

let g:syntastic_c_compiler = 'clang'
" let g:syntastic_c_compiler_options = ""

" �R���t�B�O��clang_complete����
let g:syntastic_c_config_file='.clang_complete'
