testing - monad
testReturnInjectsObjectIntoContinuationMonad
	| cc |
	cc := PartialContinuation return: 1.
	self assert: (cc value: nil) = 1.
	self assert: (cc value: 1) = 1.
	self assert: (cc value: 'anything at all') = 1.