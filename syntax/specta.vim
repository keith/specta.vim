if exists("b:current_syntax")
  finish
endif

" let b:expecta_syntax = 'expecta'

syn keyword specta expect to equal

hi def link specta Statement

let b:current_syntax = "specta"

