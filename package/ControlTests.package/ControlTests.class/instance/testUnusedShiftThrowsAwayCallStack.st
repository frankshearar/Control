testing
testUnusedShiftThrowsAwayCallStack
	self assert: 1 + [2 + [:k | 3] shift] reset = 4.