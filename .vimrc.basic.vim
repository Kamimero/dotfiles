"
" ��{�I�Ȑݒ�
"

" �X�N���[�����̗]���m��
set scrolloff=5
" ��s�ɒ������͂������Ă��Ă������܂�Ԃ������Ȃ�
set textwidth=0
" �o�b�N�A�b�v���Ȃ�
set nobackup
" �X���b�v�t�@�C�����Ȃ�
set noswapfile
" ���ŏ���������ꂽ�玩���œǂݒ���
set autoread
" �ҏW���ł����̃t�@�C�����J����悤�ɂ���
set hidden
" �o�b�N�X�y�[�X�łȂ�ł�������悤��
set backspace=indent,eol,start
" �e�L�X�g���`�I�v�V�����C�}���`�o�C�g�n��ǉ�
set formatoptions=lmoq
" �r�[�v���Ȃ炳�Ȃ�
set vb t_vb=
" Explore�̏����f�B���N�g��
set browsedir=buffer
" �J�[�\�����s���A�s���Ŏ~�܂�Ȃ��悤�ɂ���
set whichwrap=b,s,h,l,<,>,[,],~
" �R�}���h���X�e�[�^�X�s�ɕ\��
set showcmd
" ���݂̃��[�h��\��
set showmode
" viminfo�t�@�C���̐ݒ�
set viminfo='50,<1000,s100,\"50
" ���[�h���C���͖���
set modelines=0
" vim���g���Ă���Ă��肪�Ƃ�
set notitle
" undo file (*.un~)�����Ȃ�
set noundofile
" �^�u�T�C�Y
set tabstop=4
" �^�u��}������Ƃ��̕�
set shiftwidth=4
" �s�ԍ��̕\��
set number
" �}�E�X�L��
set mouse=a
" �E�B���h�E���ł̐܂�Ԃ����֎~
set nowrap
" �J�[�\���̈ʒu�\�����s��
set ruler
" C����X�^�C���̃C���f���g�������œ����
set cindent
" �R�}���h���C���s��
set cmdheight=2
" �X�e�[�^�X���C���s.
set laststatus=2
" 256�F�\��
set t_Co=256
" ������܂�Ԃ��Ȃ�
set nowrapscan
" �R�}���h���C�����[�h��<tab>�Ńt�@�C�����⊮��L���ɂ���
set wildmenu
" �������ʂ��n�C���C�g�\���ɂ���
set hlsearch
" �t�@�C����ʔ���ƃv���O�C����L����
filetype plugin indent on
" �������̂݌����ő啶���������𖳎�����A�啶�����܂܂ꂽ��啶�����������`�F�b�N����
set ignorecase
set smartcase

set clipboard=unnamedplus,unnamed

set modifiable

set write

set tags=./tags;

set whichwrap=b,s,h,l,<,>,[,],~

" �y�[�X�g���Ɏ����C���f���g�����Ȃ�
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

" �t�@�C���̋����㏑��
cmap w!! w !sudo tee % > /dev/null

" vimproc�̎����_�E�����[�h
if has('win32') || has('win64')
let g:vimproc#download_windows_dll = 1
endif
