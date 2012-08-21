testing
testShiftCutsToNearestReset
	| cont |
	[1 + [ 2 + [ :k |
			cont := k.
			k value: 0 ] shift ] reset ] reset.
	self assert: (cont value: 0) = 2.