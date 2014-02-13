" Vim Syntax File
" Language: Specta/Expecta flavored Objective-C
" Maintainer: Keith Smiley <keithbsmiley@gmail.com>
" Last Change: 2014 Feb 12

if exists('b:current_syntax')
  finish
endif

if !exists('g:specta_highlight_expecta')
  let g:specta_highlight_expecta = 1
endif

runtime! syntax/objc.vim
runtime! syntax/cocoa_keywords.vim
runtime! syntax/objc_enhanced.vim
unlet! b:current_syntax

syntax keyword spectaKeyword done setAsyncSpecTimeout containedin=ALLBUT,objcString,cCommentL
syntax keyword spectaGroups after afterAll afterEach before beforeAll beforeEach context describe example it itBehavesLike itShouldBehaveLike sharedExamplesFor specify nextgroup=spectaBlock containedin=ALLBUT,objcString,cCommentL

" Requires matchgroup=noop for correct start/end/folding
"  this is caused by something in the imported objc.vim
syntax region spectaBlock matchgroup=noop start=/\v\(\^(AsyncBlock)?\s*\{/ end=/\v\}\);/ containedin=ALLBUT,spectaCommentBlock fold contains=ALLBUT,spectaSpec
syntax region spectaBlock matchgroup=noop start=/\v\(\@".*",\s\^(AsyncBlock)?\s*\{/ end=/\v\}\);/ containedin=ALLBUT,spectaCommentBlock fold contains=ALLBUT,spectaSpec

syntax region spectaSpec matchgroup=spectaBounds start=/\vSpecBegin|SPEC_BEGIN|SharedExamplesBegin/ end=/\vSpecEnd|SPEC_END|SharedExamplesEnd/ containedin=ALLBUT,spectaBlock fold contains=ALL

" Pending specs, make the entire nested block a comment
syntax keyword spectaPending pending xdescribe xcontext xexample xit xspecify nextgroup=spectaCommentBlock containedin=ALLBUT,objcString,cCommentL
syntax region spectaCommentBlock matchgroup=spectaCommentBlock start=/\v\(\@".*",\s\^(AsyncBlock)?\s*\{/ end=/\v\}\);/ containedin=ALL fold contains=NONE

" Focused specs, format the outside of the block
syntax keyword spectaFocused fdescribe fcontext fexample fit fspecify nextgroup=spectaFocusedBlock containedin=ALLBUT,objcString,cCommentL
syntax region spectaFocusedBlocks matchgroup=spectaFocusedBlock start=/\v\(\@".*",\s\^(AsyncBlock)?\s*\{/ end=/\v\}\);/ containedin=ALL fold contains=ALLBUT,spectaSpec

highlight default link spectaPending Comment
highlight default link spectaCommentBlock Comment

highlight default link spectaFocused TODO
highlight default link spectaFocusedBlock TODO

highlight default link spectaKeyword Function
highlight default link spectaGroups Function
highlight default link spectaBounds Structure

if g:specta_highlight_expecta == 1
  syntax keyword expectaComparisons expect to notTo will willNot
  syntax keyword expectaMatchers equal beIdenticalTo beNil beTruthy beFalsy contain haveCountOf beEmpty beInstanceOf beKindOf beSubclassOf beLessThan beLessThanOrEqualTo beGreaterThan beGreaterThanOrEqualTo beInTheRangeOf beCloseTo beCloseToWithin raise raiseAny containedin=ALLBUT,spectaCommentBlock,objcString
  highlight default link expectaComparisons Identifier
  highlight default link expectaMatchers    Type
endif

let c_no_curly_error = 1
let b:current_syntax = 'specta'
