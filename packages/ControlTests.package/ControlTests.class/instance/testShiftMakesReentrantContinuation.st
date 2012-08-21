testing
testShiftMakesReentrantContinuation
	| cont |
	self assert: [ 2 + [ :k | cont := k. k value: 0 ] shift ] reset = 2.
	
	self assert: (cont value: 2) = 4.
	self assert: (cont value: 4) = 6.