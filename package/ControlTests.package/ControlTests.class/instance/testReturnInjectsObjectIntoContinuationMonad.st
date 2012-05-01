testing - monad
testReturnInjectsObjectIntoContinuationMonad
	| cc |
	cc := PartialContinuation return: [:x | x + 1].
	self assert: (cc value: 1) = 2.
	self should: [cc value: nil] raise: MessageNotUnderstood.