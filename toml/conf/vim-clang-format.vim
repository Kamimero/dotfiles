"----------------------------------------------------------------------------
"
" vim-clang-format
"
" echo "load vim-clang-format configration file."

autocmd FileType c,cpp,objc map <buffer><Leader>f <Plug>(operator-clang-format)

" Link: http://algo13.net/clang/clang-format-style-oputions.html
" AccessModifierOffset                           ? アクセス修飾子(public: protected: private:)のインデント
" AlignConsecutiveAssignments                    ? true の場合、連続する行の代入演算子を揃える
" AlignConsecutiveDeclarations                   ? true の場合、連続する行の宣言を揃える
" AlignEscapedNewlinesLeft                       ? エスケープされた改行の位置
" AlignOperands                                  ? true の場合、水平方向に二項演算子と三項演算子を揃えます。
" AlignTrailingComments                          ? コメントを末尾に揃える
" AllowShortBlocksOnASingleLine                  ? 単一の行に簡単なブレース文を収縮。
" AllowShortCaseLabelsOnASingleLine              ? true の場合、短いケースラベルを単一行に置く。
" AllowShortFunctionsOnASingleLine               ? int f() { return 0; } を単一行に置くか。
" AllowShortIfStatementsOnASingleLine            ? true の場合、単一行の if (a) return; をキープ
" AllowShortLoopsOnASingleLine                   ? true の場合、単一行の while (true) continue; をキープ
" AlwaysBreakAfterReturnType                     ? 関数宣言の戻り値の型のスタイル。 より正確には「関数定義の型以下の識別子の前に改行」。
" AlwaysBreakBeforeMultilineStrings              ? 複数行のリテラル文字列の前で改行する
" AlwaysBreakTemplateDeclarations                ? true の場合、テンプレート宣言の template<...> の後に改行
" BinPackArguments                               ? false の場合、関数呼び出しの引数は、全て同じ行か、1行ごとになる。
" BinPackParameters                              ? 関数呼び出しや関数定義のパラメーターを、一行ごとにするか
" BreakBeforeBraces                              ? 波括弧{}のフォーマットスタイル
" BraceWrapping                                  ? 波括弧{}のフォーマットスタイル(個々の設定はネストした設定フラグを参照)
"   AfterClass                                   ? class の後
"   AfterControlStatement                        ? コントロールステートメント(if/for/while/switch/..)の後
"   AfterEnum                                    ? enum の後
"   AfterFunction                                ? 関数の後
"   AfterNamespace                               ? namespace の後
"   AfterObjCDeclaration                         ? ObjC 宣言(@autoreleasepool, interfaces, ..)の後
"   AfterStruct                                  ? truct の後
"   AfterUnion                                   ? union の後
"   BeforeCatch                                  ? catch の前
"   BeforeElse                                   ? else の前
"   IndentBraces                                 ? 関数呼び出しや関数定義のパラメーターを、一行ごとにするか
" BreakBeforeBinaryOperators                     ? 二項演算子の折り返し方法
" BreakConstructorInitializersBeforeComma        ? コンストラクタ初期化子のコンマの前で改行し、コロンでカンマを揃えるか
" BreakStringLiterals                            ? フォーマット時に文字列リテラルを改行で調整。
" ColumnLimit                                    ? 最大列(行幅)数
" ConstructorInitializerAllOnOneLineOrOnePerLine ? コンストラクターの初期化子が行に収まらない場合は、改行する
" ConstructorInitializerIndentWidth              ? コンストラクタ初期化子リストのインデントに使用する文字数
" ContinuationIndentWidth                        ? 継続行のためのインデント幅
" DerivePointerAlignment                         ? true の場合、 * や & の位置を自動判定。

let g:clang_format#code_style = "llvm"

" フォーマット設定
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
    \   "AfterClass"                                    : "true",
    \   "AfterControlStatement"                         : "false",
    \   "AfterEnum"                                     : "true",
    \   "AfterFunction"                                 : "true",
    \   "AfterNamespace "                               : "false",
    \   "AfterObjCDeclaration "                         : "false",
    \   "AfterStruct "                                  : "false",
    \   "AfterUnion "                                   : "false",
    \   "BeforeCatch "                                  : "false",
    \   "BeforeElse "                                   : "true",
    \   "IndentBraces "                                 : "false",
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


