testing
testShiftWithNoResetRaisesException
	self
		should: [[ :k | 1 + 2] shift]
		raise: MissingResetException
		description: 'No missing reset exception for BlockClosure>>shift'.