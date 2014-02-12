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
" hi def link spectaKeywords     Statement
" hi def link spectaPending      Comment
" hi def link expectaComparisons Identifier
" hi def link expectaMatchers    Type
" let b:current_syntax = 'specta'
" let c_no_curly_error = 1
" syntax keyword spectaKeywords AsyncBlock done setAsyncSpecTimeout beforeAll beforeEach before afterEach after afterAll describe context sharedExamplesFor it contained
" highlight def link spectaKeywords Function

runtime! syntax/objc.vim
unlet! b:current_syntax
set fdm=syntax

syntax keyword spectaGroups context describe sharedExamplesFor containedin=ALL,objcString
syntax keyword spectaKeywords after afterAll afterEach AsyncBlock before beforeAll beforeEach done example it itBehavesLike itShouldBehaveLike setAsyncSpecTimeout specify containedin=ALL,objcString

" syntax keyword spectaPending pending xdescribe xcontext xexample xit xspecify nextgroup=spectaCommentBlock containedin=ALL,objcString
" syntax region spectaCommentBlock matchgroup=spectaComment start=/\vx\w*\(\^\{/ end=/\v\}\);/ containedin=ALL

syntax region spectaBlock start=/\v\(\^\{/ end=/\v\}\);/ containedin=ALL fold
syntax region spectaBlock start=/\v\(\@".*",\s\^\{/ end=/\v\}\);/ containedin=ALL fold
syntax region spectaSpec matchgroup=spectaBounds start=/\vSpecBegin|SPEC_BEGIN|SharedExamplesBegin/ end=/\vSpecEnd|SPEC_END|SharedExamplesEnd/ containedin=ALL,spectaBlock fold contains=ALL

" highlight def link spectaComment Comment
" highlight def link spectaPending Comment

highlight def link spectaGroups PreProc
highlight def link spectaKeywords Function
highlight def link spectaBounds Structure
