" Vim Syntax File
" Language: Specta/Expecta flavored Objective-C
" Maintainer: Keith Smiley <keithbsmiley@gmail.com>
" Last Change: 2013 Apr 11

" if exists('b:current_syntax')
"   finish
" endif

" runtime! syntax/objc.vim
" runtime! syntax/cocoa_keywords.vim
" runtime! syntax/objc_enhanced.vim
" if exists('b:current_syntax')
"   unlet b:current_syntax
" endif


" syn keyword expectaComparisons expect to notTo will willNot
" syn keyword expectaMatchers equal beIdenticalTo beNil beTruthy beFalsy contain haveCountOf beEmpty beInstanceOf beKindOf beSubclassOf beLessThan beLessThanOrEqualTo beGreaterThan beGreaterThanOrEqualTo beInTheRangeOf beCloseTo beCloseToWithin raise raiseAny
" hi def link spectaBounds       PreProc
" hi def link spectaGroups       Function
" hi def link spectaFunctions    Function
" hi def link spectaPending      Comment
" hi def link expectaComparisons Identifier
" hi def link expectaMatchers    Type
" let b:current_syntax = 'specta'
" let c_no_curly_error = 1

runtime! syntax/objc.vim
unlet! b:current_syntax
set fdm=syntax

syntax keyword spectaGroups after afterAll afterEach before beforeAll beforeEach context describe done example it itBehavesLike itShouldBehaveLike setAsyncSpecTimeout sharedExamplesFor specify nextgroup=spectaBlock containedin=ALLBUT,objcString

" Requires matchgroup=noop for correct start/end/folding
"  this is caused by something in the imported objc.vim
syntax region spectaBlock matchgroup=noop start=/\v\(\^\{/ end=/\v\}\);/ containedin=ALLBUT,spectaCommentBlock fold contains=ALLBUT,spectaSpec
syntax region spectaBlock matchgroup=noop start=/\v\(\@".*",\s\^(AsyncBlock)?\s*\{/ end=/\v\}\);/ containedin=ALLBUT,spectaCommentBlock fold contains=ALLBUT,spectaSpec

syntax region spectaSpec matchgroup=spectaBounds start=/\vSpecBegin|SPEC_BEGIN|SharedExamplesBegin/ end=/\vSpecEnd|SPEC_END|SharedExamplesEnd/ containedin=ALLBUT,spectaBlock fold contains=ALL

" highlight def link noop TODO

syntax keyword spectaPending pending xdescribe xcontext xexample xit xspecify nextgroup=spectaCommentBlock containedin=ALLBUT,objcString
syntax region spectaCommentBlock matchgroup=spectaCommentBlock start=/\v\(\@".*",\s\^\{/ end=/\v\}\);/ containedin=ALL fold contains=NONE

highlight def link spectaPending Comment
highlight def link spectaCommentBlock Comment

highlight def link spectaGroups Function
highlight def link spectaBounds Structure
