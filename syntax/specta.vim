if exists('b:current_syntax')
  finish
endif

runtime! syntax/objc.vim
runtime! syntax/cocoa_keywords.vim
runtime! syntax/objc_enhanced.vim
unlet b:current_syntax

syn keyword spectaBounds SpecBegin SpecEnd
syn keyword specta describe it expect to equal

hi def link specta Statement
hi def link specaBounds PreProc

let b:current_syntax = 'specta'

