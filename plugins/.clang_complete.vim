
" �L�[�o�C���f�B���O�𖳌��ɂ���
let g:clang_jumpto_declaration_key = ""

if has('unix')
	" �f�o�b�O���x��
	let g:clang_debug         = 0
	" �����⊮�͖���
	let g:clang_complete_auto = 0
	" ���C�u�����g�p���p�X�w��
	let g:clang_use_library   = 1
	let g:clang_library_path  = '/usr/lib/llvm-3.8/lib/libclang.so.1'
	" �G���[���o����\���Ȃ̂��ȁH
	let g:clang_compete_copen = 1
	let g:clang_hl_errors     = 1

	let g:clang_user_options  = '-std=c++11'
elseif has('win32')
	" �f�o�b�O���x��
	let g:clang_debug         = 0
	" �����⊮�͖���
	let g:clang_complete_auto = 0
	" �G���[���o����\���Ȃ̂��ȁH
	let g:clang_compete_copen = 0
	let g:clang_hl_errors     = 1
	let g:clang_user_options  = '-std=c++11'
endif

