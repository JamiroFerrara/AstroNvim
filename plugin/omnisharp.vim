"-------------------------------------------------------------------------------------------------------------------
"OMNISHARP
"-------------------------------------------------------------------------------------------------------------------
filetype on
augroup ColorschemePreferences
  autocmd!
" Link ALE sign highlights to similar equivalents without background colours
  autocmd ColorScheme * highlight link ALEErrorSign   WarningMsg
  autocmd ColorScheme * highlight link ALEWarningSign ModeMsg
  autocmd ColorScheme * highlight link ALEInfoSign    Identifier
augroup END

" Xaml
au BufNewFile,BufRead *.xaml        setf xml
au BufNewFile,BufRead *.cs set tabstop=4 
au BufNewFile,BufRead *.cs set shiftwidth=4 
au BufNewFile,BufRead *.cs hi Text guifg=lightgray
au BufNewFile,BufRead *.cs hi Structure guifg=lightgreen

let g:OmniSharp_highlight_groups = {
\ 'ClassName': 'Function',
\ 'Comment': 'Text',
\ 'FieldName': 'Text',
\ 'EventName': 'Text',
\ 'ParameterName': 'Text',
\ 'NamespaceName': 'Text',
\}
