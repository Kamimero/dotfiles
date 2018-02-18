"
" vim-clang-format
"
" https://github.com/rhysd/vim-clang-format
"

" Link: http://algo13.net/clang/clang-format-style-oputions.html
" AccessModifierOffset                           ? �A�N�Z�X�C���q(public: protected: private:)�̃C���f���g
" AlignConsecutiveAssignments                    ? true �̏ꍇ�A�A������s�̑�����Z�q�𑵂���
" AlignConsecutiveDeclarations                   ? true �̏ꍇ�A�A������s�̐錾�𑵂���
" AlignEscapedNewlinesLeft                       ? �G�X�P�[�v���ꂽ���s�̈ʒu
" AlignOperands                                  ? true �̏ꍇ�A���������ɓ񍀉��Z�q�ƎO�����Z�q�𑵂��܂��B
" AlignTrailingComments                          ? �R�����g�𖖔��ɑ�����
" AllowShortBlocksOnASingleLine                  ? �P��̍s�ɊȒP�ȃu���[�X�������k�B
" AllowShortCaseLabelsOnASingleLine              ? true �̏ꍇ�A�Z���P�[�X���x����P��s�ɒu���B
" AllowShortFunctionsOnASingleLine               ? int f() { return 0; } ��P��s�ɒu�����B
" AllowShortIfStatementsOnASingleLine            ? true �̏ꍇ�A�P��s�� if (a) return; ���L�[�v
" AllowShortLoopsOnASingleLine                   ? true �̏ꍇ�A�P��s�� while (true) continue; ���L�[�v
" AlwaysBreakAfterReturnType                     ? �֐��錾�̖߂�l�̌^�̃X�^�C���B ��萳�m�ɂ́u�֐���`�̌^�ȉ��̎��ʎq�̑O�ɉ��s�v�B
" AlwaysBreakBeforeMultilineStrings              ? �����s�̃��e����������̑O�ŉ��s����
" AlwaysBreakTemplateDeclarations                ? true �̏ꍇ�A�e���v���[�g�錾�� template<...> �̌�ɉ��s
" BinPackArguments                               ? false �̏ꍇ�A�֐��Ăяo���̈����́A�S�ē����s���A1�s���ƂɂȂ�B
" BinPackParameters                              ? �֐��Ăяo����֐���`�̃p�����[�^�[���A��s���Ƃɂ��邩
" BreakBeforeBraces                              ? �g����{}�̃t�H�[�}�b�g�X�^�C��
" BraceWrapping                                  ? �g����{}�̃t�H�[�}�b�g�X�^�C��(�X�̐ݒ�̓l�X�g�����ݒ�t���O���Q��)
"	AfterClass                                   ? class �̌�
"	AfterControlStatement                        ? �R���g���[���X�e�[�g�����g(if/for/while/switch/..)�̌�
"	AfterEnum                                    ? enum �̌�
"	AfterFunction                                ? �֐��̌�
"	AfterNamespace                               ? namespace �̌�
"	AfterObjCDeclaration                         ? ObjC �錾(@autoreleasepool, interfaces, ..)�̌�
"	AfterStruct                                  ? truct �̌�
"	AfterUnion                                   ? union �̌�
"	BeforeCatch                                  ? catch �̑O
"	BeforeElse                                   ? else �̑O
"	IndentBraces                                 ? �֐��Ăяo����֐���`�̃p�����[�^�[���A��s���Ƃɂ��邩
" BreakBeforeBinaryOperators                     ? �񍀉��Z�q�̐܂�Ԃ����@
" BreakConstructorInitializersBeforeComma        ? �R���X�g���N�^�������q�̃R���}�̑O�ŉ��s���A�R�����ŃJ���}�𑵂��邩
" BreakStringLiterals                            ? �t�H�[�}�b�g���ɕ����񃊃e���������s�Œ����B
" ColumnLimit                                    ? �ő��(�s��)��
" ConstructorInitializerAllOnOneLineOrOnePerLine ? �R���X�g���N�^�[�̏������q���s�Ɏ��܂�Ȃ��ꍇ�́A���s����
" ConstructorInitializerIndentWidth              ? �R���X�g���N�^�������q���X�g�̃C���f���g�Ɏg�p���镶����
" ContinuationIndentWidth                        ? �p���s�̂��߂̃C���f���g��
" DerivePointerAlignment                         ? true �̏ꍇ�A * �� & �̈ʒu����������B

let g:clang_format#code_style = "llvm"
" �t�H�[�}�b�g�ݒ�
let g:clang_format#style_options = {
	\ "AccessModifierOffset"                            : -4,
	\ "AlignConsecutiveAssignments"                     : "true",
	\ "AlignConsecutiveDeclarations"                    : "true",
	\ "AlignEscapedNewlinesLeft"                        : "true",
	\ "AlignOperands"                                   : "true",
	\ "AlignTrailingComments"                           : "true",
	\ "AllowShortBlocksOnASingleLine"                   : "false",
	\ "AllowShortCaseLabelsOnASingleLine "              : "false",
	\ "AllowShortFunctionsOnASingleLine"                : "Inline",
	\ "AllowShortIfStatementsOnASingleLine"             : "false",
	\ "AllowShortLoopsOnASingleLine"                    : "false",
	\ "AlwaysBreakAfterReturnType"                      : "None",
	\ "BreakBeforeBraces"                               : "Custom",
	\ "BraceWrapping"                                   : {
	\	"AfterClass"                                    : "true",
	\	"AfterControlStatement"                         : "false",
	\	"AfterEnum"                                     : "true",
	\	"AfterFunction"                                 : "true",
	\	"AfterNamespace "                               : "false",
	\	"AfterObjCDeclaration "                         : "false",
	\	"AfterStruct "                                  : "false",
	\	"AfterUnion "                                   : "false",
	\	"BeforeCatch "                                  : "false",
	\	"BeforeElse "                                   : "true",
	\	"IndentBraces "                                 : "false",
	\ },
	\ "BreakBeforeBinaryOperators"                      : "None",
	\ "BreakConstructorInitializersBeforeComma "        : "false",
	\ "ColumnLimit"                                     : "128",
	\ "ConstructorInitializerAllOnOneLineOrOnePerLine " : "false",
	\ "ConstructorInitializerIndentWidth"               : "4",
	\ "ContinuationIndentWidth"                         : "4",
	\ "AlwaysBreakTemplateDeclarations"                 : "true",
	\ "Standard"                                        : "C++11",
	\ "SpacesInSquareBrackets"                          : "false",
	\ "SpaceAfterCStyleCast"                            : "true",
	\ "IndentCaseLabels"                                : "true",
	\ "UseTab"                                          : "Never",
	\ "DerivePointerAlignment"                          : "true",
	\ "PointerAlignment"                                : "Right",
	\}

autocmd FileType c,cpp,objc map <buffer><Leader>f <Plug>(operator-clang-format)

