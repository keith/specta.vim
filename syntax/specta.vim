if exists("b:current_syntax")
  finish
endif

" let b:expecta_syntax = 'expecta'

runtime! syntax/objc.vim
unlet b:current_syntax

syn keyword specta expect to equal SpecBegin SpecEnd

hi def link specta Statement

let b:current_syntax = "specta"

