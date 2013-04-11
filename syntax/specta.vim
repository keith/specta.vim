if exists('b:current_syntax')
  finish
endif

runtime! syntax/objc.vim
runtime! syntax/cocoa_keywords.vim
runtime! syntax/objc_enhanced.vim
unlet b:current_syntax

syn keyword spectaBounds SpecBegin SpecEnd SharedExamplesBegin SharedExamplesEnd SPEC_BEGIN SPEC_END
syn keyword specta describe context it ^AsyncBlock setAsyncSpecTimeout example specify expect sharedExamplesFor beforeAll beforeEach before itShouldBehaveLike itBehavesLike afterEach after afterAll
syn keyword spectaPending pending xdescribe xcontext xexample xit xspecify
syn keyword expectaMathers equal to notTo will willNot beIdenticalTo beNil beTruthy beFalsy contain haveCountOf beEmpty beInstanceOf beKindOf beSubclassOf beLessThan beLessThanOrEqualTo beGreaterThan beGreaterThanOrEqualTo beInTheRangeOf beCloseTo beCloseToWithin raise raisyAny 

hi def link spectaBounds PreProc
hi def link specta       Statement

let b:current_syntax = 'specta'

