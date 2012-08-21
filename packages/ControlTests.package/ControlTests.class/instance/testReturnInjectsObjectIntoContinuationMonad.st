testing - monad
testReturnInjectsObjectIntoContinuationMonad
	| cc |
	cc := PartialContinuation return: [:x | x + 1].
	self assert: 2 equals: (cc value: 1).
	self should: [cc value: nil] raise: MessageNotUnderstood.