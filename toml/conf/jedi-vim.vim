"----------------------------------------------------------------------------
"
" jedi-vim
"
" see: https://wonderwall.hatenablog.com/entry/2017/01/29/213052
" echo "load jedi-vim configration file."

" see: https://github.com/davidhalter/jedi-vim/issues/870
py3 import os; import sys; sys.executable=os.path.join(sys.prefix, 'python.exe')

let g:jedi#auto_initialization = 1

" let g:jedi#auto_vim_configuration = 0

" .��Ɏ�����POPUP�\������E���Ȃ�
let g:jedi#popup_on_dot = 0

" �|�b�v�A�b�v�\���Ő擪���Z���N�g����E���Ȃ�
let g:jedi#popup_select_first = 0

" �h�L�������g�������ŕ���
let g:jedi#auto_close_doc = 1

" Jedi displays function call signatures in insert mode in real-time, highlighting the current argument. 
" The call signatures can be displayed as a pop-up in the buffer (set to 1, the default), 
" which has the advantage of being easier to refer to, or in Vim's command line aligned with the function call (set to 2), 
" which can improve the integrity of Vim's undo history.
let g:jedi#show_call_signatures = "1"

" let g:jedi#show_call_signatures_delay = 500

" ��`���^�u�\��
let g:jedi#use_tabs_not_buffers = 1

" let g:jedi#squelch_py_warning = 0

" let g:jedi#completions_enabled = 1

" let g:jedi#use_splits_not_buffers = "left"

" Python�o�[�W����
let g:jedi#force_py_version = "auto"

" let g:jedi#smart_auto_mappings = 1

" let g:jedi#use_tag_stack = 1



" ��`���Ɉړ�
let g:jedi#goto_command = "<leader>d"

" �ϐ��Ȃǂ̊��蓖�Č��Ɉړ�
let g:jedi#goto_assignments_command = "<leader>g"

" let g:jedi#goto_definitions_command = ""

" let g:jedi#documentation_command = "K"

let g:jedi#usages_command = "<leader>n"

let g:jedi#completions_command = "<C-Space>"

" ���l�[��
let g:jedi#rename_command = "<leader>r"

