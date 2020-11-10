" general config {{
let g:ale_linters_explicit = 1
" enable lint on save
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
" You can disable this option too if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 0
" disable other functions
let g:ale_completion_enabled = 0
"}}

" UI {{
let g:airline#extensions#ale#enabled = 1
let g:ale_list_window_size = 5
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 0
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚡'
let g:ale_set_balloons = 1
let g:ale_open_list = 1
" error format
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"}}

" linter {{
let g:ale_linters = {
    \'csh': ['shell'],
    \'zsh': ['shell'],
    \'go': ['gofmt', 'golint'],
    \'python': ['flake8'],
    \'javascript': ['eslint'],
    \'c': ['clang'],
    \'h': ['clang'],
    \'cpp': ['clang++'],
    \'hpp': ['clang++'],
    \'vim':['vint'],
    \'text': [],
    \}
let g:ale_c_gcc_options = '-O2 -std=c99'
let g:ale_cpp_gcc_options = '-O2 -std=c++17'
"}}

" formater(fixer) config {{
let g:ale_fixers={
    \'python': ['yapf', 'isort'],
    \'c': ['clang-format'],
    \'h': ['clang-format'],
    \'cpp': ['clang-format'],
    \'hpp': ['clang-format']
    \}
let g:ale_cpp_clangtidy_executable='/usr/local/bin/clang-tidy'
let g:ale_cpp_clangd_executable='/usr/local/opt/llvm/bin/clangd'
let g:ale_python_isort_executable='/Users/wangk/anaconda3/bin/isort'
let g:ale_python_isort_options='-sl'
let g:ale_python_yapf_executable='/Users/wangk/anaconda3/bin/yapf'
let g:ale_c_clangformat_executable='/usr/local/bin/clang-format'
let g:ale_c_clangformat_options='-style="{
    \ Language : Cpp,
    \ BasedOnStyle : Google,
    \ BinPackParameters : false,
    \ BinPackArguments : false,
    \ IndentWidth : 4,
    \ TabWidth : 4,
    \ UseTab : Never,
    \ AlignAfterOpenBracket : AlwaysBreak,
    \ AllowShortBlocksOnASingleLine : false,
    \ AllowShortCaseLabelsOnASingleLine : false,
    \ AllowShortFunctionsOnASingleLine : Inline,
    \ AllowShortIfStatementsOnASingleLine : Never,
    \ AllowShortLoopsOnASingleLine : false,
    \ AllowShortLambdasOnASingleLine : All,
    \ AlwaysBreakAfterDefinitionReturnType : false,
    \ AlwaysBreakTemplateDeclarations : true,
    \ AlwaysBreakBeforeMultilineStrings : true,
    \ BreakBeforeBinaryOperators : NonAssignment,
    \ BreakBeforeTernaryOperators : true,
    \ BraceWrapping : {AfterFunction: true},
    \ BreakBeforeBraces : Linux,
    \ BreakInheritanceList : BeforeColon,
    \ ConstructorInitializerAllOnOneLineOrOnePerLine : true,
    \ ConstructorInitializerIndentWidth : 4,
    \ ContinuationIndentWidth : 4,
    \ Cpp11BracedListStyle : true,
    \ IncludeBlocks : Preserve,
    \ IndentWrappedFunctionNames : false,
    \ IndentFunctionDeclarationAfterType : false,
    \ IndentCaseLabels : false,
    \ NamespaceIndentation : None,
    \ PointerAlignment : Left,
    \ SortIncludes : true,
    \ SpacesInParentheses : false,
    \ SpacesInSquareBrackets : false,
    \ SpacesInAngles : false,
    \ SpaceInEmptyParentheses : false,
    \ SpacesInCStyleCastParentheses : false,
    \ SpaceAfterCStyleCast : false,
    \ SpacesInContainerLiterals : true,
    \ SpaceBeforeAssignmentOperators : true,
    \ SpaceBeforeCpp11BracedList : false,
    \ SpaceBeforeRangeBasedForLoopColon : false,
    \ ColumnLimit : 120,
    \ AccessModifierOffset : -1,
    \ AlignEscapedNewlinesLeft : true,
    \ AlignOperands : true,
    \ AlignTrailingComments : true,
    \ AllowAllParametersOfDeclarationOnNextLine : true,
    \ BreakConstructorInitializersBeforeComma : false,
    \ DerivePointerAlignment : true,
    \ ExperimentalAutoDetectBinPacking : false,
    \ MaxEmptyLinesToKeep : 1,
    \ KeepEmptyLinesAtTheStartOfBlocks : false,
    \ ObjCBlockIndentWidth : 2,
    \ ObjCSpaceAfterProperty : false,
    \ ObjCSpaceBeforeProtocolList : false,
    \ PenaltyBreakBeforeFirstCallParameter : 1,
    \ PenaltyBreakComment : 300,
    \ PenaltyBreakString : 1000,
    \ PenaltyBreakFirstLessLess : 120,
    \ PenaltyExcessCharacter : 1000000,
    \ PenaltyReturnTypeOnItsOwnLine : 200,
    \ SpacesBeforeTrailingComments : 2,
    \ Standard : Auto
    \}"'
