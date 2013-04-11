" Vim Syntax File
" Language: Specta/Expecta flavored Objective-C
" Maintainer: Keith Smiley <keithbsmiley@gmail.com>
" Last Change: 2013 Apr 11

if exists('b:current_syntax')
  finish
endif

runtime! syntax/objc.vim
runtime! syntax/cocoa_keywords.vim
runtime! syntax/objc_enhanced.vim
if exists('b:current_syntax')
  unlet b:current_syntax
endif

syn keyword spectaBounds SpecBegin SpecEnd SharedExamplesBegin SharedExamplesEnd SPEC_BEGIN SPEC_END
syn keyword spectaGroups describe context sharedExamplesFor
syn keyword spectaFunctions it example specify itShouldBehaveLike itBehavesLike
syn keyword spectaKeywords ^AsyncBlock setAsyncSpecTimeout beforeAll beforeEach before afterEach after afterAll
syn keyword spectaPending pending xdescribe xcontext xexample xit xspecify

syn keyword expectaComparisons expect to notTo will willNot
syn keyword expectaMatchers equal beIdenticalTo beNil beTruthy beFalsy contain haveCountOf beEmpty beInstanceOf beKindOf beSubclassOf beLessThan beLessThanOrEqualTo beGreaterThan beGreaterThanOrEqualTo beInTheRangeOf beCloseTo beCloseToWithin raise raisyAny 


hi def link spectaBounds       PreProc
hi def link spectaGroups       Function
hi def link spectaFunctions    Function
hi def link spectaKeywords     Statement
hi def link spectaPending      Comment

hi def link expectaComparisons Identifier
hi def link expectaMatchers    Type

let b:current_syntax = 'specta'
let c_no_curly_error = 1

